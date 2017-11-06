library(ggplot2)
library(readr)
library(dplyr)
library(corrplot)
library(plotly)

path <- ""

setwd(path)

oname <- list.files(path=getwd())  

numfiles <- length(oname) 

Adjcloses <- read.csv("BBAS3.SA.csv")[1]

for(i in c(1:numfiles))
{
  name <- substr(oname[i],length(oname[i]),length(oname[i])+4)
  temp <- assign(name, read.csv(oname[i],
                          col.names = c("Date", "Open", "High", "Low", "Close", 
                                        paste(name),"Volume"), na.strings=c("","null")
        ))
  Adjcloses <- merge(Adjcloses,temp[,c(1,6)],by="Date",all = TRUE)     
}

Adjcloses$Date1 <- as.Date(Adjcloses$Date, format = "%Y-%m-%d")

# Manter data frame original caso seja necessário usá-lo depois
Original <- Adjcloses

# Transformando em NAs os campos com 0
Adjcloses[ Adjcloses==0 ] <- NA

# Vamos criar um dataset para cada setor da economia
# Bancos
bancos <- Adjcloses[ ,which(names(Adjcloses) %in% c("Date1","ABCB4","BBAS3","BBDC4","ITUB4"))]
bancos$ibancos <- (rowSums(cbind(bancos$ABCB4,3*bancos$BBAS3,3*bancos$BBDC4,
                      bancos$BPAN4,3*bancos$ITUB4),na.rm = TRUE))/11

# Celulose  
celulose <- Adjcloses[ ,which(names(Adjcloses) %in% c("Date1","FIBR3","SUZB5"))]
celulose$icelulose <- (rowSums(cbind(celulose$SUZB5,celulose$FIBR3),na.rm = TRUE))/2

# Varejo
varejo <- Adjcloses[ ,which(names(Adjcloses) %in% c("Date1","BTOW3","LAME4","LREN3","HGTX3"))]
varejo$ivarejo <- (rowSums(cbind(varejo$BTOW3,2*varejo$LAME4,2*varejo$LREN3,varejo$HGTX3),na.rm = TRUE))/6


# Construção
construcao <- Adjcloses[ ,which(names(Adjcloses) %in% c("Date1","CYRE3","EZTC3","MRVE3"))]
construcao$iconstrucao <- (rowSums(cbind(construcao$CYRE3,construcao$EZTC3,construcao$MRVE3),na.rm = TRUE))

# Mineradoras/Metalúrgicas
metal <- Adjcloses[ ,which(names(Adjcloses) %in% c("Date1","USIM5","GOAU4","CSNA3","VALE5"))]
metal$imetal <- (rowSums(cbind(metal$USIM5,metal$GOAU4,metal$CSNA3,metal$VALE5),na.rm = TRUE))

# Serviços Públicos
servicos <- Adjcloses[ ,which(names(Adjcloses) %in% c("Date1","SAPR4", "SBSP3", "CGAS3"))]
servicos$iservicos <- (rowSums(cbind(servicos$SAPR4, servicos$SBSP3, servicos$CGAS3 ),na.rm = TRUE))

# Energia Elétrica  
eletricas <- Adjcloses[ ,which(names(Adjcloses) %in% c("Date1","CMIG4", "ELET3", "ELPL4", "ENBR3", "EQTL3"))]
eletricas$ieletricas <- (rowSums(cbind(eletricas$CMIG4,eletricas$ELET3,eletricas$ELPL4,eletricas$ENBR3,eletricas$EQTL3),na.rm = TRUE))

# Petróleo e Gás  
petroleo <- Adjcloses[ ,which(names(Adjcloses) %in% c("Date1","PETR4","QGEP3"))]
petroleo$ipetroleo <- (rowSums(cbind(4*petroleo$PETR4,petroleo$QGEP3),na.rm = TRUE))/5

# Maquinário  
maquinario <- Adjcloses[ ,which(names(Adjcloses) %in% c("Date1","MYPK3","POMO4","RAPT4","TUPY3","WEGE3"))]
maquinario$imaquinario <- (rowSums(cbind(maquinario$MYPK3,maquinario$POMO4,maquinario$RAPT4,maquinario$TUPY3,3*maquinario$WEGE3),na.rm = TRUE))/7

# Juntando data frames para depois manter apenas informações dos índices
total <- merge(bancos,celulose,by="Date1")
total <- merge(total,construcao,by="Date1")
total <- merge(total,eletricas,by="Date1")
total <- merge(total,maquinario,by="Date1")
total <- merge(total,metal,by="Date1")
total <- merge(total,petroleo,by="Date1")
total <- merge(total,servicos,by="Date1")
total <- merge(total,varejo,by="Date1")

# Removendo linhas com NAs
total_sna = na.omit(total)

total <- total_sna[ ,which(names(total_sna) %in% c("Date1","ibancos","icelulose","iconstrucao","ieletricas","imaquinario","imetal","ipetroleo","iservicos","ivarejo"))]
 
# Normalizando os preços
total$Date1 = NULL

total_norm <- data.frame(lapply(total,function(x) x/x[1]))

# Retornos diários dos índices setoriais
total_daily <- sapply(total_norm,function(x) (diff(x)/x[-length(x)]))

total_daily = rm.outlier(total_daily)

boxplot(total_daily)

# Médias dos retornos dos setores
means = apply(total_daily,2,mean)
