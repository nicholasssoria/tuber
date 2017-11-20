fTaxasPorCategoria <- function(pais1=NULL, canal=NULL){
  
  Videos <- read.csv("Videos.csv", header=T, stringsAsFactors = F)
  Canais <- read.csv("Canais.csv", header=T, stringsAsFactors = F)
  
  if(is.null(pais1)||pais1=="NULL") {
    if(is.null(canal)||canal=="NULL") {
      bd <- Videos %>% 
        group_by(categoria) %>% 
        summarise(quantidade = n(), visualizacoes=sum(as.numeric(visualizacoes)), 
                  curtidas=sum(as.numeric(curtidas)),comentarios=sum(as.numeric(comentarios)))
    } else {
      bd <- inner_join(Videos, Canais, by="idCanal") %>%
        filter(nome==canal) %>%
        group_by(categoria) %>% 
        summarise(quantidade = n(), visualizacoes=sum(as.numeric(visualizacoes)), 
                  curtidas=sum(as.numeric(curtidas)),comentarios=sum(as.numeric(comentarios.x)))    
    }
    
  } else {
    if(is.null(canal)||canal=="NULL") {
      bd <- inner_join(Videos, Canais, by="idCanal") %>%
        filter(pais==pais1) %>%
        group_by(categoria) %>% 
        summarise(quantidade = n(), visualizacoes=sum(as.numeric(visualizacoes)), 
                  curtidas=sum(as.numeric(curtidas)),comentarios=sum(as.numeric(comentarios.x)))
    }else{
      bd <- inner_join(Videos, Canais, by="idCanal") %>%
        filter(pais==pais1 & nome==canal) %>%
        group_by(categoria) %>% 
        summarise(quantidade = n(), visualizacoes=sum(as.numeric(visualizacoes)), 
                  curtidas=sum(as.numeric(curtidas)),comentarios=sum(as.numeric(comentarios.x)))
    }
  }
  
  bd <- gather(bd,tipo,valor,-c(categoria,quantidade))
  bd$proporcao <- bd$valor/bd$quantidade
  bd
}
