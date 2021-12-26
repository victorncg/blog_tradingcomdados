library(ggplot2)
library(readr)
library(dplyr)
library(corrplot)
library(plotly)
library(outliers)

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

# Transformando células com 0 em NAs
Adjcloses[ Adjcloses==0 ] <- NA

# Selecionando dados a partir de 01 d Julho de 2012
Adjcloses <- subset(Adjcloses,Date1>"2012-07-01")

# Removendo algumas colunas
Adjcloses1 <- Adjcloses[,-c(1,34)]  
    
nova <- data.frame(lapply(Adjcloses1,function(x) x/x[1]))

nova$Date <- Adjcloses$Date1

# Omitindo os NAs 
nova <- na.omit(nova)

# Retornos diários
daily <- sapply(nova2,function(x) (diff(x)/x[-length(x)]))

# Retornos acumulados
cumulative <- apply(nova2,2,function(x) ((x/x[1]) - 1) )

# Vamos remover outliers que podem ter sido gerados quando calculamos os retornos
daily <- data.frame(daily)
daily <- rm.outlier(daily)

# Histogramas
# ITUB4 vs. BBDC4
par(mfrow=c(1,2))
hist(log(abs(daily$ITUB4)),breaks=100, main = "ITUB4", xlab="Variações Diárias",ylab= "Frequência",xlim=c(-0.1,0.1))
lines(density(daily$ITUB4, adjust=0.4), lty="dotted", col="darkgreen", lwd=2) 
abline(v=mean(daily$ITUB4), col = "blue", lwd = 2)
mean(daily$ITUB4[daily$ITUB4<0.1 & daily$ITUB4> -0.1])

hist(daily$BBDC4,breaks=100, main = "BBDC4", xlab="Variações Diárias",ylab= "Frequência",xlim=c(-0.1,0.1))
lines(density(daily$BBDC4, adjust=0.5), lty="dotted", col="darkgreen", lwd=2) 
abline(v=mean(daily$BBDC4), col = "blue", lwd = 2)
mean(daily$BBDC4[daily$BBDC4<0.1 & daily$BBDC4> -0.1])

# VALE5 vs. PETR4
par(mfrow=c(1,2))
hist(daily$VALE5,breaks=100, main = "VALE5", xlab="Variações Diárias",ylab= "Frequência",xlim=c(-0.1,0.1))
lines(density(daily$VALE5, adjust=0.4), lty="dotted", col="darkgreen", lwd=2) 
abline(v=mean(daily$VALE5), col = "blue", lwd = 2)
mean(daily$VALE5[daily$VALE5<0.1 & daily$VALE5> -0.1])

hist(daily$PETR4,breaks=100, main = "PETR4", xlab="Variações Diárias",ylab= "Frequência",xlim=c(-0.1,0.1))
lines(density(daily$PETR4, adjust=0.5), lty="dotted", col="darkgreen", lwd=2) 
abline(v=mean(daily$PETR4), col = "blue", lwd = 2)
mean(daily$PETR4[daily$PETR4<0.1 & daily$PETR4> -0.1])

# EQTL3 vs. ENBR3
par(mfrow=c(1,2))
hist(daily$EQTL3,breaks=100, main = "EQTL3", xlab="Variações Diárias",ylab= "Frequência",xlim=c(-0.1,0.1))
lines(density(daily$EQTL3, adjust=0.4), lty="dotted", col="darkgreen", lwd=2) 
abline(v=mean(daily$EQTL3), col = "blue", lwd = 2)
mean(daily$EQTL3[daily$EQTL3<0.1 & daily$EQTL3> -0.1])

hist(daily$ENBR3,breaks=100, main = "ENBR3", xlab="Variações Diárias",ylab= "Frequência",xlim=c(-0.1,0.1))
lines(density(daily$ENBR3, adjust=0.5), lty="dotted", col="darkgreen", lwd=2) 
abline(v=mean(daily$ENBR3), col = "blue", lwd = 2)
mean(daily$ENBR3[daily$ENBR3<0.1 & daily$ENBR3> -0.1])

# WEGE3 vs. POMO4
par(mfrow=c(1,2))
hist(daily$WEGE3,breaks=100, main = "WEGE3", xlab="Variações Diárias",ylab= "Frequência",xlim=c(-0.1,0.1))
lines(density(daily$WEGE3, adjust=0.4), lty="dotted", col="darkgreen", lwd=2) 
abline(v=mean(daily$WEGE3), col = "blue", lwd = 2)
mean(daily$WEGE3[daily$WEGE3<0.1 & daily$WEGE3> -0.1])

hist(daily$POMO4,breaks=100, main = "POMO4", xlab="Variações Diárias",ylab= "Frequência",xlim=c(-0.1,0.1))
lines(density(daily$POMO4, adjust=0.5), lty="dotted", col="darkgreen", lwd=2) 
abline(v=mean(daily$POMO4), col = "blue", lwd = 2)
mean(daily$POMO4[daily$POMO4<0.1 & daily$POMO4> -0.1])

# LREN3 vs. LAME4
par(mfrow=c(1,2))
hist(daily$LREN3,breaks=100, main = "LREN3", xlab="Variações Diárias",ylab= "Frequência",xlim=c(-0.1,0.1))
lines(density(daily$LREN3, adjust=0.4), lty="dotted", col="darkgreen", lwd=2) 
abline(v=mean(daily$LREN3), col = "blue", lwd = 2)
mean(daily$LREN3[daily$LREN3<0.1 & daily$LREN3> -0.1])
par(mfrow=c(1,1))
hist(daily$LAME4,breaks=100, main = "LAME4", xlab="Variações Diárias",ylab= "Frequência",xlim=c(-0.1,0.1))
lines(density(daily$LAME4, adjust=1), lty="dotted", col="darkgreen", lwd=2) 
abline(v=mean(daily$LAME4), col = "blue", lwd = 2)
mean(daily$LAME4[daily$LAME4<0.1 & daily$LAME4> -0.1])

par(mfrow=c(1,1))
hist(daily2$LAME4,breaks=1000, main = "LAME4", xlab="Variações Diárias",ylab= "Frequência")
lines(density(daily2$LAME4, adjust=0.5), lty="dotted", col="darkgreen", lwd=2) 
abline(v=mean(daily2$LAME4), col = "blue", lwd = 2)
mean(daily2$LAME4[daily2$LAME4<0.1 & daily2$LAME4> -0.1])

