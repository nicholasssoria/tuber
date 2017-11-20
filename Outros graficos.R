#Gráfico da relação views x comentários de cada vídeos dos mais vistos(meio indentificável)
MaisVistos %>% ggplot(aes(visualizacoes, comentarios)) + geom_point(aes(colour=factor(nomeCanal))) + geom_smooth(method="lm") + scale_x_log10() + ggtitle("Comentários e Visualizações do video mais visto de cada canal") + labs(y = "Número de comentários", x = "Número de visualizações")
