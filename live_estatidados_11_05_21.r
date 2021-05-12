# Upload de dados de MF
install.packages("quantmod")
install.packages("PerformanceAnalytics")
install.packages("data.table")

library(quantmod)
library(PerformanceAnalytics)
library(data.table)
library(RColorBrewer)
library(ggplot2)
library(reshape2)

tickers = c('EQTL3.SA', 'PETR4.SA', 'VALE3.SA', 'WEGE3.SA', 'EMBR3.SA',
                              'CSNA3.SA', 'USIM5.SA','TOTS3.SA','ABEV3.SA','LREN3.SA', 
                              'CIEL3.SA', 'RADL3.SA', 'RENT3.SA', 'MDIA3.SA', 
                              'EZTC3.SA', 'FLRY3.SA', 'OIBR3.SA', 'CVCB3.SA')

apple_stock = getSymbols.yahoo("AAPL", from = '2020-1-1', auto.assign = F)

apple_stock = getSymbols.yahoo("AAPL", from = '2014-1-1', auto.assign = F)[,6]

dailyReturn()
weeklyReturn()
monthlyReturn(apple_stock)
yearlyReturn(apple_stock)

chartSeries(apple_stock)

precos_carteira = NULL

for(ticker in tickers){
  precos_carteira = cbind(precos_carteira, 
                        getSymbols.yahoo(ticker, from = '2014-1-1', auto.assign = F)[,6])
}

precos_carteira = data.frame(precos_carteira)

colnames(precos_carteira) = c('EQTL3', 'PETR4', 'VALE3', 'WEGE3', 'EMBR3',
                              'CSNA3', 'USIM5','TOTS3','ABEV3','LREN3', 
                              'CIEL3', 'RADL3', 'RENT3', 'MDIA3', 
                              'EZTC3', 'FLRY3', 'OIBR3', 'CVCB3'
)

precos_carteira$data = row.names(precos_carteira)

# Função para fazer o 'forward filling'
replaceNaWithLatest = function( dfIn, nameColsNa = names(dfIn) ){ 
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

nova_carteira = replaceNaWithLatest(data.frame(precos_carteira[,-19]))

nova_carteira = data.frame(nova_carteira, row.names = precos_carteira$data)
colSums(is.na(precos_carteira))
colSums(is.na(nova_carteira))

# Normalizar os preços dos papéis
normalizado = data.frame(lapply(nova_carteira, function(x) x/x[1]))
normalizado$data = precos_carteira$data
normalizado$data = as.Date(normalizado$data, format = "%Y-%m-%d")

d = melt(normalizado, id.vars = 'data')

ggplot(d, aes(data, value, col=variable, group = variable)) +
  geom_line()

# Plot de Retorno vs. Risco
retornos_carteira = na.omit(ROC(nova_carteira))

rendimento_carteira = Return.portfolio(retornos_carteira)

meant = apply(retornos_carteira, 2, function(x) mean(x))
sdev = apply(retornos_carteira, 2, function(x) sd(x))

tovar = data.frame(t(rbind(meant, sdev)))

ggplot(tovar, aes(x=sdev, y=meant)) +
  geom_text(aes(label = rownames(tovar)))+
  xlab('Volatilidade ou Desvio-Padrão') + ylab('Média dos Retornos')


ggplot(tovar, aes(x=sdev, y=meant)) +
  geom_text(aes(label = rownames(tovar), colour = sdev, size = meant),check_overlap = F)+
  xlab('Volatilidade ou Desvio-Padrão') + ylab('Média dos Retornos')
