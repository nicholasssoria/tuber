#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

Videos <- read.csv("Videos.csv", header=T, stringsAsFactors = F)
Canais <- read.csv("Canais.csv", header=T, stringsAsFactors = F)
MaisVistos <- read.csv("MaisVistos.csv", header=T, stringsAsFactors = F)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  #ANÁLISE GABY
  output$canais <- renderUI({
    if(input$paises=="NULL")
      selectInput(inputId = "select_canais",
                  label = "Filtro por canal:",
                  choices = as.list(c("NULL",levels(as.factor(Canais$nome)))),
                  selected="NULL")
    else
      selectInput(inputId = "select_canais",
                  label = "Filtro por canal:",
                  choices = as.list(c("NULL",filter(Canais,pais==input$paises)$nome)),
                  selected="NULL")
    
  })
  
  output$canaisF <- renderUI({
    if(input$paisesF=="NULL")
      selectInput(inputId = "select_canaisF",
                  label = "Filtro por canal:",
                  choices = as.list(c("NULL",levels(as.factor(Canais$nome)))),
                  selected="NULL")
    else
      selectInput(inputId = "select_canaisF",
                  label = "Filtro por canal:",
                  choices = as.list(c("NULL",filter(Canais,pais==input$paisesF)$nome)),
                  selected="NULL")
    
  })
  
  output$taxasCategoria <- renderPlot({
    ggplot(fTaxasPorCategoria(pais1=input$paises,canal=input$select_canais), aes(x=categoria,y=proporcao,group=1,fill=categoria))+
      facet_grid(as.factor(tipo)~.,scales="free") +
      geom_col(aes(y=proporcao))+
      ggtitle(label="Taxas por Categoria")+
      xlab("Categoria") +
      ylab("Taxa")+
      theme(axis.text.x = element_text(angle = 45, hjust = 1))
  })
  
  output$faturamento <- renderPlot({
    ggplot(fDinheiroPorCategoria(pais1=input$paisesF,canal=input$select_canaisF), aes(x=categoria,y=taxa,group=1,fill=categoria))+
      geom_col(aes(y=taxa))+
      ggtitle(label="Taxa de faturamento por categoria")+
      xlab("Categoria") +
      ylab("Taxa de US$")+
      theme(axis.text.x = element_text(angle = 45, hjust = 1))
    
  })
  
  output$canaisPopulares <- renderDataTable({
    tabela <- Canais[order(Canais$views, decreasing=T),-c(1,3)]
    names(tabela) <- c("Canal","Visualizações","Comentários","Inscritos","Qtde. Vídeos","País","Faturamento")
    tabela
  })
  
  #ANÁLISES RÔMULO
  output$visualizacoesInscritos <- renderPlot({
    ggplot(Canais, aes(x = views, y = inscritos)) + 
      geom_point() + 
      geom_smooth(method = "lm") + 
      xlab("Visualizações") + 
      ylab ("Inscritos") + 
      ggtitle(label = "Relação entre visualizações e inscritos dos canais")
  })
  
  output$visualizacoesComentariosCurtidas <- renderPlot({
    gr2 <- ggplot(Videos, aes(x = visualizacoes, y= comentarios)) + 
      geom_point() + 
      geom_smooth(method = "lm") + 
      xlab("Visualizações") + ylab("Comentários") + 
      ggtitle(label = "Relação entre visualizações e comentários dos vídeos")
    
    gr3 <-  ggplot(Videos, aes( x = visualizacoes, y = curtidas)) + 
      geom_point() + geom_smooth(method = "lm") + 
      xlab("Visualizações") + ylab("Curtidas") + 
      ggtitle(label = "Relação entre visualizações e curtidas dos vídeos")
    
    par(grid.arrange(gr2 , gr3 , ncol=2))
  })
  
  output$corr1 <- renderText({
    str_c("A correlação entre visualizações e inscritos dos canais é ",
          round(cor(Canais$inscritos, Canais$views),2),".")
  })
  
  output$corr2 <- renderText({
    str_c("A correlação entre visualizações e comentários dos vídeos é ",
          round(cor(Videos$visualizacoes, Videos$comentarios),2),
          ". ",
          "Já a correlação entre visualizações e curtidas é ",
          round(cor(Videos$visualizacoes, Videos$curtidas),2))
  })
  
  #ANÁLISES SALGADO
  output$visualizacoesHora <- renderPlot({
    ggplot(Videos, aes(hour(publicadoEm),visualizacoes,col=categoria))+
      geom_jitter() + scale_x_continuous(breaks=seq(0, 24, by=2)) +
      facet_wrap(~categoria,scales="free_y")+ggtitle(label="Quantidade de visualizações e hora de publicação")+
      xlab("Hora em que foi publicado") +
      ylab("Visualizações") +
      theme(axis.text.x = element_text(angle = 45, hjust = 1))
  })
  
  output$arrecadacoesInscritos <- renderPlot({
    ggplot(Canais,aes(dinheiro,inscritos,col=pais)) +
      geom_jitter() + ggtitle(label="Relação entre inscritos e arrecadação")+
      xlab("Arrecadação em US$") +
      ylab("Inscritos") +
      scale_x_continuous(breaks=seq(min(Canais$dinheiro),max(Canais$dinheiro),by=10000))+
      theme(axis.text.x = element_text(angle = 45, hjust = 1))
  })
  
  #ANÁLISES MARI
  output$visualizacoesMaisVistos <- renderPlot({
    MaisVistos %>% 
      ggplot(aes(y = as.numeric(visualizacoes), x = nomeCanal, fill = categoria)) + 
      geom_bar(stat = "identity") + 
      theme(axis.text.x = element_text(angle = 45, hjust = 1)) + 
      ggtitle("Visualizações do video mais visto de cada canal") + 
      labs(y = "Visualizações", x = "Canal")
  })
  
  output$categoriaPais <- renderPlot({
    inner_join(Videos, Canais, by="idCanal") %>%
      group_by(pais, categoria) %>% summarise(quantidade = n()) %>%
      ggplot(aes(x=categoria,y=quantidade,group=1,fill=categoria))+
      facet_grid(pais~.,scales="free") +
      geom_col(aes(y=quantidade))+
      ggtitle(label="O tipo de categoria mais frequente varia de acordo com o país?")+
      xlab("Categoria") +
      ylab("Frequência") + theme(axis.text.x = element_text(angle = 45, hjust = 1))
  })
  
})
