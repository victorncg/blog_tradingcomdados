library(ggplot2)
library(readr)
library(dplyr)
library(corrplot)
library(plotly)
library(outliers)
library(data.table)
library(zoo)

path = "..."

setwd(path)

oname = list.files(path=getwd())  

numfiles = length(oname) 

Adjcloses = read.csv("BBAS3.csv")[1]

for(i in c(1:numfiles))
{
  name = substr(oname[i],length(oname[i]),length(oname[i])+4)
  temp = assign(name, read.csv(oname[i],
                                col.names = c("Date", "Open", "High", "Low", "Close", 
                                              paste(name),"Volume"), na.strings=c("","null")
  ))
  Adjcloses = merge(Adjcloses,temp[,c(1,6)],by="Date",all = TRUE)     
}

Adjcloses$Date1 = as.Date(Adjcloses$Date, format = "%Y-%m-%d")

aa = na.omit(Adjcloses)

Adjcloses[ Adjcloses==0 ] = NA

sapply(Adjcloses, function(x) sum(is.na(x)))

# Removendo colunas com missings
Adjcloses$CGRA3 = NULL
Adjcloses$SANB1 = NULL
Adjcloses$UGPA3 = NULL
Adjcloses$ESTC3 = NULL

# Função para preencher NAs com forward filling
replaceNaWithLatest <- function( dfIn, nameColsNa = names(dfIn) ){ 
  dtTest <- data.table(dfIn) 
  invisible(lapply(nameColsNa, 
                   function(nameColNa){ 
                     setnames(dtTest, nameColNa, "colNa") 
                     dtTest[, segment := cumsum(!is.na(colNa))] 
                     dtTest[, colNa := colNa[1], by = "segment"] 
                     dtTest[, segment := NULL] 
                     setnames(dtTest, "colNa", nameColNa) 
                   })) 
  return(dtTest)
}

replaced = replaceNaWithLatest(Adjcloses)

sapply(replaced, function(x) sum(is.na(x)))

replaced2 = na.locf(replaced, fromLast = TRUE)

sapply(replaced2, function(x) sum(is.na(x)))

Adjcloses_new = data.frame(sapply(replaced2, function(x) as.numeric(x)))

Adjcloses1 = Adjcloses_new[,-c(1,(length(Adjcloses_new)))]  

# Normalizando dados    
nova = data.frame(lapply(Adjcloses1,function(x) x/x[1]))

nova$Date = replaced2$Date1

nova = na.omit(nova)

nova2 = nova[,-60]

# Daily returns  
daily = sapply(nova2,function(x) (diff(x)/x[-length(x)]))

# Cumulative returns
cumulative = apply(nova2,2,function(x) ((x/x[1]) - 1) )

totalvar = cbind(cumulative, nova$Date)

totalvarts <- ts(totalvar)
plot.ts(totalvarts[,c(51:59)])

# Vamos remover outliers que podem ter sido gerados quando calculamos os retornos
daily <- data.frame(daily)

daily <- rm.outlier(daily)

daily$TUPY3 = NULL
daily$TIMP3 = NULL

# =======================================================================
# Vamos remover outliers que podem ter sido gerados quando calculamos os retornos
daily <- data.frame(daily)

daily2 <- rm.outlier(daily)
# =======================================================================================================================
# Scatter plots

# Plotting functions

lm_eqn <- function(df,i,j){
  y = df[,colnames(df) %in% j]
  x = df[,colnames(df) %in% i]
  m <- lm(y ~ x, df);
  eq <- substitute(italic(y) == a + b %.% italic(x)*","~~italic(r)^2~"="~r2, 
                   list(a = format(coef(m)[1], digits = 2), 
                        b = format(coef(m)[2], digits = 2), 
                        r2 = format(summary(m)$r.squared, digits = 3)))
  as.character(as.expression(eq));                 
}


# ==================================================
# Array com nomes das ações
stocks = colnames(daily[,!colnames(daily) %in% "IBOV."])

vetor = list(0,0,0)

matriz = data.frame(alfa = vetor[[1]], beta = vetor[[2]], r_squared = vetor[[3]])

# Criação das equações
for(i in c(1:length(stocks)))
{

y = daily[,colnames(daily) %in% stocks[i]]
x = daily[,colnames(daily) %in% "IBOV."]

m = lm(y ~ x, daily)

a = m$coefficients[1][1]

b = m$coefficients[2][1]

c = summary(m)

c = c$r.squared

matriz_temp = data.frame(alfa = a, beta = b, r_squared = c)

rownames(matriz_temp) = stocks[i]

matriz = rbind(matriz,matriz_temp)

}

# ==================================================
# Loop para salvar as figuras

setwd("C:/Users/victo/Blog/Post 09/Figuras/Corrigidas")

for(i in c(1:length(stocks)))
{
  y = daily[,colnames(daily) %in% stocks[i]]
  x = daily[,colnames(daily) %in% "IBOV."]
  
  m = lm(y ~ x, daily)
  
  a = stocks[i]
  
  a = paste(a, "vs IBOV")
  
  png(filename=paste(a,".png"))
  
  plot(x,y,ylab = paste("Retornos - " ,stocks[i]),xlab = "IBOV")
  
  abline(m)
  
  mtext(bquote( y == .(m$coefficients[2]) * x + .(m$coefficients[1])), side=3, line=0) 
  
  dev.off()
  
}

# ====================================================================================================
# Criando base para carteiras especificadas e plotando gráficos
# ==========================
# Construindo carteiras
carteira1 = (nova$PETR4 + nova$ITUB4 + nova$CYRE3 + nova$BBAS3 + nova$USIM5 
             + nova$GOAU4 + nova$ELET3 + nova$BRML3 + nova$DTEX3 + nova$GGBR4)/10

carteira2 = (0.16*nova$PETR4 + 0.14*nova$ITUB4 + 0.13*nova$CYRE3 + 0.12*nova$BBAS3 + 0.1*nova$USIM5 
             + 0.09*nova$GOAU4 + 0.08*nova$ELET3 + 0.07*nova$BRML3 + 0.06*nova$DTEX3 + 0.05*nova$GGBR4)/1

carteira3 = (nova$PETR4 + nova$ITUB4 + nova$CYRE3 + nova$BBAS3 + nova$USIM5)/5

carteira4 = (0.25*nova$PETR4 + 0.225*nova$ITUB4 + 0.2*nova$CYRE3 + 0.175*nova$BBAS3 + 0.15*nova$USIM5)/1

#carteira4 = (0.075*nova$PETR4 + 0.6*nova$ITUB4 + 0.1*nova$CYRE3 + 0.175*nova$BBAS3 + 0.05*nova$USIM5)/1

carteira5 = (0.25*nova$ABEV3 + 0.225*nova$EQTL3 + 0.2*nova$LREN3 + 0.175*nova$CIEL3 + 0.15*nova$RADL3)/1

carteiras = data.frame(nova$Date,
                       indice1 = carteira1,
                       indice2 = carteira2,
                       indice3 = carteira3,
                       indice4 = carteira4,
                       indice5 = nova$IBOV.,
                       indice6 = carteira5,
                       itau = nova$ITUB4)

carteiras$nova.Date <- as.Date(carteiras$nova.Date, format = "%Y-%m-%d")
#carteiras_time <- ts(carteiras)
#plot.ts(carteiras_time)

a <- ggplot() + 
  geom_line(data = carteiras, aes(x = nova.Date, y = indice1, color = "Carteira 1"),size=0.72) +
  geom_line(data = carteiras, aes(x = nova.Date, y = indice2, color = "Carteira 2"),size=0.72) +
  geom_line(data = carteiras, aes(x = nova.Date, y = indice3, color = "Carteira 3"),size=0.72) +
  geom_line(data = carteiras, aes(x = nova.Date, y = indice4, color = "Carteira 4"),size=0.72) +
  geom_line(data = carteiras, aes(x = nova.Date, y = indice5, color = "IBOV"),size=0.72) +
  #geom_line(data = carteiras, aes(x = nova.Date, y = indice6, color = "Carteira média/DP"),size=0.72) +
  #geom_line(data = carteiras, aes(x = nova.Date, y = itau, color = "ITUB4"),size=0.72) +
  xlab('Data') +
  ylab('Retorno')+ theme(text = element_text(size=15))

a$labels$colour <- "Carteiras"

print(a)
