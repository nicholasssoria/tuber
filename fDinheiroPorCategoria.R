fDinheiroPorCategoria <- function(pais1=NULL, canal=NULL){
  Videos <- read.csv("Videos.csv", header=T, stringsAsFactors = F)
  Canais <- read.csv("Canais.csv", header=T, stringsAsFactors = F)
  
  if(is.null(pais1)||pais1=="NULL") {
    if(is.null(canal)||canal=="NULL") {
      bd <- Videos %>% 
        group_by(categoria) %>% 
        summarise(quantidade = n(), faturamento=sum(as.numeric(faturamento)))
    } else {
      bd <- inner_join(Videos, Canais, by="idCanal") %>%
        filter(nome==canal) %>%
        group_by(categoria) %>% 
        summarise(quantidade = n(), faturamento=sum(as.numeric(faturamento)))
    }
    
  } else {
    if(is.null(canal)||canal=="NULL") {
      bd <- inner_join(Videos, Canais, by="idCanal") %>%
        filter(pais==pais1) %>%
        group_by(categoria) %>% 
        summarise(quantidade = n(), faturamento=sum(as.numeric(faturamento)))
    }else{
      bd <- inner_join(Videos, Canais, by="idCanal") %>%
        filter(pais==pais1 & nome==canal) %>%
        group_by(categoria) %>% 
        summarise(quantidade = n(), faturamento=sum(as.numeric(faturamento)))
    }
  }
  
  #bd <- gather(bd,tipo,valor,-c(categoria,quantidade))
  bd$taxa <-bd$faturamento/bd$quantidade
  bd
}
