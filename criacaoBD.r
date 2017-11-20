yt_oauth("576764074171-icp885ubnrgjsiin4al8uemn6kjl4s0l.apps.googleusercontent.com","DdBSm1dpFC7OCjPK0RuW2Cfb", token="")

###BANCO DE DADOS DOS CANAIS
idcanaisEUA <- c("UCBR8-60-B28hp2BmDPdntcQ",	"UC-8Q-hLdECwQmaWNwXitYDw",	"UCANLZYMidaCbLQFWXBC95Jg",	"UC20vb-R_px4CguHzzBPhoyQ",	"UCY30JRSgfhYXA6i6xX1erWg",	"UCRijo3ddMTht_IHyNSNXpNQ",	"UCp0hYYBW6IMayGgR-WeoCvQ",	"UCSAUGyc_xA8uYzaIVG6MESQ",	"UC7_YxT-KID8kRbqZo7MyscQ",	"UC0VOyT2OCBKdQhF3BAbZ-1g")
idcanaisALE <- c("UCC9h3H-sGrvqd2otknZntsQ",	"UCsXVk37bltHxD1rDPwtNM8Q",	"UCYJ61XIK64sp6ZFFS8sctxw",	"UCHfdTAyg5t4mb1G-3rJ6QsQ",	"UCb3tJ5NKw7mDxyaQ73mwbRg", "UCTXeJ33DzXI2veQpKfrvaYw",	"UCw_T-wN5D_NbfwFp4ztQvBA",	"UCpZ_DI-ZugwMzXcqccaTVsg", "UCXIyz409s7bNWVcM-vjfdVA",	"UCrDAFagvWYuScZMzqs-OslA")
idcanaisREI <- c("UCbW18JZRgko_mOGm5er8Yzg",	"UC0C-w0YjGpqDXGB8IHb662A",	"UCVtFOytbRpEvzLjvqGG5gxQ",	"UCS5Oz6CHmeoF7vSad0qqXfw",	"UComP_epzeKzvBX156r6pm1Q",	"UC_aEa8K-EOJ3D6gOs7HcyNg",	"UC6nSFpj9HTCZ5t-N3Rm3-HA", "UCWRV5AVOlKJR1Flvgt310Cw", 	"UCjtLOfx1yt1NlnFIDyAX3Ug",	"UC1ieoHqKW-yYgDhLHIcx28w")
idcanaisFRA <- c("UC1l7wYrva1qCH-wgqcHaaRg",	"UCyWqModMQlbIo8274Wh_ZsQ",	"UCww2zZWg4Cf5xcRKG-ThmXQ",	"UCWeg2Pkate69NFdBeuRFTAw",	"UCmPSwsooZq8an7xOLQQhAdw",	"UCWMYFDuCcvkmPiOf1RP_IKQ",	"UCudKvbd6gvbm5UCYRk5tZKA",	"UC8Q0SLrZLiTj5s4qc9aad-w",	"UCTt2AnK--mnRmICnf-CCcrw",	"UCtihF1ZtlYVzoaj_bKLQZ-Q")
idcanaisIND <- c("UCq-Fj5jknLsUf-MWSy4_brA",	"UCpEhnqL0y41EpW2TvWAHD7Q",	"UCBnZ16ahKA2DZ_T5W0FPUXg",	"UCFFbwnve3yF62-tVXkTyHqg",	"UCppHT7SZKKvar4Oc9J4oljQ",	"UC56gTxNs4f9xZ7Pa2i5xNzg",	"UCX52tYZiEh_mHoFja3Veciw",	"UC55IWqFLDH1Xp7iu1_xknRA",	"UCsPF3cApzCohxPp5oKdoWSQ",	"UCbTLwN10NoCU4WDzLf1JMOA")
idcanaisITA <- c("UCe9oofjVfJzapRyVlt57x8Q",	"UCSFC5Cio8zaLQDFPxA7y_HQ",	"UCD-aXv7CMezGSTfxmKAD6Ag",	"UCMggu4tZ2N6SD4FebIbMDpA",	"UCW4w39HG16HSuDkvLu4AIaA",	"UCNo7m7faHS9t3nSDfWXvGww",	"UCHZl_sLl4kGZSkrPBrWb_aQ",	"UC9PZVgJF-mX4aDDzLE4z5Zg",	"UC3V8twsHOUBGvM_xsQ_4ZJg",	"UC1jTVZboWRPpjGKAN921M5w")
idcanaisBRA <- c("UC3KQ5GWANYF8lChqjZpXsQw",	"UCffDXn7ycAzwL2LDlbyWOTw",	"UCPHXtOVmjvbP9OJihsd7gCg",	"UCV306eHqgo0LvBf3Mh36AHg",	"UCEWHPFNilsT0IfQfutVzsag",	"UCbTVTephX30ZhQF5zwFppBg",	"UCIPA6iWNaoetaa1T46RkzXw", "UC3RpTX6fEMJ6KBNTTgXJB9w",	"UCH2VZQBLFTOp6I_qgnBJCuQ",	"UCddYq41_tZ1FnLlguLT6-Ow")
idcanaisCAN <- c("UCHkj014U2CQ2Nv0UZeYpE_A",	"UCKqH_9mk1waLgBiL2vT5b9g",	"UCaWd5_7JhbQBe4dknZhsHJg",	"UCfm4y4rHF5HGrSr-qbvOwOg",	"UC3KQ5GWANYF8lChqjZpXsQw",	"UCdxi8d8qRsRyUi2ERYjYb-w",	"UCsTcErHg8oDvUnTzoqsYeNw",	"UC5nc_ZtjKW1htCVZVRxlQAQ",	"UCbI2XhhZwo4NEyg3oNv2Tsw",	"UCYjk_zY-iYR8YNfJmuzd70A")
idcanais <- c(idcanaisEUA, idcanaisALE, idcanaisREI, idcanaisFRA, idcanaisIND, idcanaisITA, idcanaisBRA, idcanaisCAN)

rm(idCanaisEUA)
rm(idcanaisALE)
rm(idCanaisREI)
rm(idCanaisFRA)
rm(idCanaisIND)
rm(idCanaisITA)
rm(idcanaisBRA)
rm(idCanaisCAN)

Canais <- select(as.data.frame(get_channel_stats(channel_id = c(idcanais[1]))), c(snippet.title, id, statistics.viewCount, statistics.commentCount, statistics.subscriberCount, statistics.videoCount))
names(Canais) <- c("nome", "idCanal", "views", "comentarios", "inscritos", "qtdeVideos")

for (i in 2:80) {
  Canais <- rbind(Canais, select(as.data.frame(get_channel_stats(channel_id = c(idcanais[i]))), c(snippet.title, id, statistics.viewCount, statistics.commentCount, statistics.subscriberCount, statistics.videoCount)))
}

pais <- c(rep("Estados Unidos", 10), rep("Alemanha",10) ,rep("Reino Unido", 10), rep("França", 10), rep("Índia", 10), rep("Itália", 10), rep("Brasil", 10), rep("Canadá", 10))
Canais <- cbind(Canais, pais)

write.csv(Canais, "canais.csv", row.names = T)



##BANCO DE DADOS DOS VIDEOS
videoInfo = function(vid){
  cols = c("id", "viewCount", "likeCount", "dislikeCount", "favoriteCount", "commentCount")
  
  input = as.data.frame(get_stats(video_id=vid),stringsAsFactors=F)
  faltam = setdiff(cols, names(input))
  
  if (length(faltam) > 0)
    for (campo in faltam)
      input[[campo]] = rep(0, nrow(input))
  input[, cols]
  
}

options(stringsAsFactors = F)
canalVideos <- vector("list",80)

for(i in 1:80) {
  videosCanal <- select(yt_search(term="", type="video", channel_id=Canais[i, "idCanal"]), 
                        c(video_id, title, description, publishedAt, liveBroadcastContent, 
                          channelId, channelTitle))
  
  df_tmp_videos = do.call(rbind, lapply(videosCanal$video_id, videoInfo))
  videosCanal <- cbind(videosCanal, df_tmp_videos)
  rm(df_tmp_videos)
  
  for (j in 9:13)
    videosCanal[,j] <- as.integer(videosCanal[,j])
  
  canalVideos[[i]] = head(videosCanal[order(videosCanal$viewCount, decreasing = T),], n=5)
  
  cat(i)
}

Videos <- do.call(rbind,canalVideos)
rm(videosCanal)
rm(canalVideos)

Videos$publishedAt <- str_replace(Videos$publishedAt, "T", " ")
Videos$publishedAt <- str_replace(Videos$publishedAt, ".000Z", "")

Videos <- separate(Videos, publishedAt, into=c("data", "hora"), 
                   sep=" ", remove=F)
names(Videos) <- c("x", "id","titulo","descricao","publicadoEm","data","hora","aoVivo","idCanal","nomeCanal",
                   "visualizacoes","curtidas","descurtidas","favoritos","comentarios")

write.csv(Videos,"Videos.csv")


##ARRUMANDO BD
library(readr)

Videos <- read_csv("C:/Users/samsungs/Downloads/videos2.csv")
Videos <- Videos[,c(-1,-2,-3,-18)]
write.csv(Videos, "Videos.csv", row.names = T)

Canais <- read.csv("~/Canais.csv",header=T)
Canais <- Canais[,c(-1)]
write.csv(Canais, "Canais.csv", row.names = T)
names(Canais)[2] <- "idCanal"


Videos$hora <- videos2[,18]


##ADICIONAR CATEGORIAS DOS VIDEOS
Categorias <- read_csv("C:/Users/samsungs/Downloads/categorias.csv")

videoCat = function(vid) {
  cols = c("categoryId","defaultAudioLanguage")
  input = as.data.frame(get_video_details(video_id = vid))
  
  faltam = setdiff(cols, names(input))
  
  if (length(faltam) > 0)
    for (campo in faltam)
      input[[campo]] = rep(NA, nrow(input))
  input[, cols]
}

infoVideos <- vector("list",400)
infoVideos = do.call(rbind, lapply(Videos$id, videoCat))
Videos <- cbind(Videos,infoVideos)
rm(infoVideos)

Videos$categoria=NA
for(i in 1:400){
  Videos$categoria[i] = Categorias$categoria[which(Categorias$id==Videos$categoryId[i])]
}
Videos[which(Videos$categoria=="Education"),"categoria"]="Educação"

write.csv(Videos, "Videos.csv", row.names = T)


#dinheiro canais
lista <- vector("list",80)
for(i in 1:nrow(Canais)){
  ganha=Canais$views[i]/(Canais$qtdeVideos[i]*1000)
  lista[[i]] <- list(as.character(Canais$nome[i]), ganha)
}
dinheirocanais <- do.call(rbind,lista)
Canais$dinheiro = unlist(dinheirocanais[,2])

#faturamento por video
listavideos<- vector("list", 400)
for (i in 1:nrow(Videos)){
  recebe=Videos$visualizacoes[i]/1000 - ((Videos$visualizacoes[i]/1000)%%1000)
  listavideos[[i]]<- list(as.character(Videos$id[i]),recebe)
}
arrecadavideos<- PP <- do.call(rbind,listavideos)
Videos$faturamento = unlist(arrecadavideos[,2])


write.csv(Canais,"~/ME115/Canais.csv")
write.csv(Videos,"~/ME115/Videos.csv")