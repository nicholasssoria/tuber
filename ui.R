#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(dplyr)
library(tidyr)
library(stringr)
library(ggplot2)
library(lubridate)
library(gridExtra)

Canais <- read.csv("Canais.csv", header=T, stringsAsFactors = F)
Videos <- read.csv("Videos.csv", header=T, stringsAsFactors = F)
MaisVistos <- read.csv("MaisVistos.csv", header=T, stringsAsFactors = F)

source("fTaxasPorCategoria.R")
source("fDinheiroPorCategoria.R")

# Define UI for application that draws a histogram
shinyUI(
  fluidPage(
    titlePanel("O Youtube como canal de comunicação e faturamento"),
    
    navbarPage("ME115",
       tabPanel("Popularidade",
                sidebarLayout(
                  sidebarPanel(
                    h4("Quais são os videos mais populares?"),
                    helpText("Verifique o que está ligado à popularidade de um vídeo."),
                    br(),
                    
                    #filtrar informação por pais
                    selectInput(inputId = "paises",
                                label = "Filtro por país:",
                                choices = as.list(c("NULL",levels(as.factor(Canais$pais)))),
                                selected="NULL"),
                    
                    #filtrar informação por canal
                    uiOutput("canais")
                    
                  ),
                  mainPanel(
                    h3("Qual categoria de vídeo é mais popular?"),
                    plotOutput(outputId = "taxasCategoria"),
                    br(),
                    h3("Existe um horário em que os vídeos que são publicados têm mais visualizações?"),
                    plotOutput(outputId = "visualizacoesHora"),
                    br(),
                    h3("Visualizações do vídeo mais popular de cada canal"),
                    plotOutput(outputId = "visualizacoesMaisVistos")
                  )
                )
       ),
       tabPanel("Faturamento",
          sidebarLayout(
            sidebarPanel(
              h4("Faturamento estimado dos canais e vídeos pais populares"),
              helpText("O youtube não fornece ao público a fórmula para cálculo da 
                       arrecadação, mas estima-se que, a cada mil visualizações, 
                       o video arrecada cerca de 1US$.
                       Nos gráficos que seguem podemos ter uma ideia de quanto cada categoria arrecada."),
              br(),
              
              #filtrar informação por pais
              selectInput(inputId = "paisesF",
                          label = "Filtro por país:",
                          choices = as.list(c("NULL",levels(as.factor(Canais$pais)))),
                          selected="NULL"),
              
              #filtrar informação por canal
              uiOutput("canaisF")
            ),
            mainPanel(
              h3("Faturamento por categoria de vídeo"),
              plotOutput("faturamento"),
              br(),
              h3("Quais são os canais mais populares / que mais faturam?"),
              dataTableOutput("canaisPopulares")
            )
          )
       ),
       tabPanel("Relações",
          sidebarLayout(
            sidebarPanel(
              h4("O que influencia a popularidade dos canais e vídeos?"),
              helpText("Diversos fatores podem influenciar na popularidade de um canal ou vídeo, 
                       é possível verificar se há relações entre eles."),
              br()
              ),
            mainPanel(
              h3("A quantidade de visualizações de um canal tem a ver com o número de inscritos?"),
              plotOutput(outputId = "visualizacoesInscritos"),
              textOutput(outputId = "corr1"),
              br(),
              h3("Quanto mais visualizações de um vídeo, mais curtidas e mais comentários?"),
              plotOutput(outputId = "visualizacoesComentariosCurtidas"),
              textOutput(outputId = "corr2"),
              br(),
              h3("A arrecadação dos vídeos é relacionada com a quantidade de inscritos?"),
              plotOutput("arrecadacoesInscritos"),
              br(),
              h3("A quantidade de vídeos por categoria varia de acordo com o país?"),
              plotOutput("categoriaPais")
            )
          )
        )
    )
  )
)