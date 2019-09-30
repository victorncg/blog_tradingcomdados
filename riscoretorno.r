library(ggplot2)
library(scales)
library(BatchGetSymbols)

# WEGE3 - Retornando informações da ação
wege = BatchGetSymbols('WEGE3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
wege.df = wege$df.tickers
wege.nova = data.frame(lapply(wege.df[,-c(7:10)],function(x) x/x[1]))
wege.nova$data = wege.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
wege.nova.merge = data.frame(data = wege.nova$data, WEGE3 = wege.nova$price.adjusted)


# VALE3 - Retornando informações da ação
vale = BatchGetSymbols('VALE3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
vale.df = vale$df.tickers
vale.nova = data.frame(lapply(vale.df[,-c(7:10)],function(x) x/x[1]))
vale.nova$data = vale.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
vale.nova.merge = data.frame(data = vale.nova$data, VALE3 = vale.nova$price.adjusted)


# MGLU3 - Retornando informações da ação
mglu = BatchGetSymbols('MGLU3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
mglu.df = mglu$df.tickers
mglu.nova = data.frame(lapply(mglu.df[,-c(7:10)],function(x) x/x[1]))
mglu.nova$data = mglu.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
mglu.nova.merge = data.frame(data = mglu.nova$data, MGLU3 = mglu.nova$price.adjusted)


# EQTL3 - Retornando informações da ação
eqtl = BatchGetSymbols('EQTL3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
eqtl.df = eqtl$df.tickers
eqtl.nova = data.frame(lapply(eqtl.df[,-c(7:10)],function(x) x/x[1]))
eqtl.nova$data = eqtl.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
eqtl.nova.merge = data.frame(data = eqtl.nova$data, EQTL3 = eqtl.nova$price.adjusted)
plot(eqtl.nova$price.adjusted, type = "l")


# LREN3 - Retornando informações da ação
lren = BatchGetSymbols('LREN3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
lren.df = lren$df.tickers
lren.nova = data.frame(lapply(lren.df[,-c(7:10)],function(x) x/x[1]))
lren.nova$data = lren.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
lren.nova.merge = data.frame(data = lren.nova$data, LREN3 = lren.nova$price.adjusted)
plot(lren.nova$price.adjusted, type = "l")


# EZTC3 - Retornando informações da ação
eztc = BatchGetSymbols('EZTC3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
eztc.df = eztc$df.tickers
eztc.nova = data.frame(lapply(eztc.df[,-c(7:10)],function(x) x/x[1]))
eztc.nova$data = eztc.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
eztc.nova.merge = data.frame(data = eztc.nova$data, EZTC3 = eztc.nova$price.adjusted)
plot(eztc.nova$price.adjusted, type = "l")


# PETR4 - Retornando informações da ação
petr = BatchGetSymbols('PETR4.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
petr.df = petr$df.tickers
petr.nova = data.frame(lapply(petr.df[,-c(7:10)],function(x) x/x[1]))
petr.nova$data = petr.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
petr.nova.merge = data.frame(data = petr.nova$data, PETR4 = petr.nova$price.adjusted)
plot(petr.nova$price.adjusted, type = "l")




# LAME4 - Retornando informações da ação
lame = BatchGetSymbols('LAME4.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
lame.df = lame$df.tickers
lame.nova = data.frame(lapply(lame.df[,-c(7:10)],function(x) x/x[1]))
lame.nova$data = lame.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
lame.nova.merge = data.frame(data = lame.nova$data, LAME4 = lame.nova$price.adjusted)


# BBDC4 - Retornando informações da ação
bbdc = BatchGetSymbols('BBDC4.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
bbdc.df = bbdc$df.tickers
bbdc.nova = data.frame(lapply(bbdc.df[,-c(7:10)],function(x) x/x[1]))
bbdc.nova$data = bbdc.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
bbdc.nova.merge = data.frame(data = bbdc.nova$data, BBDC4 = bbdc.nova$price.adjusted)


# ITUB4 - Retornando informações da ação
itub = BatchGetSymbols('ITUB4.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
itub.df = itub$df.tickers
itub.nova = data.frame(lapply(itub.df[,-c(7:10)],function(x) x/x[1]))
itub.nova$data = itub.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
itub.nova.merge = data.frame(data = itub.nova$data, ITUB4 = itub.nova$price.adjusted)


# USIM5 - Retornando informações da ação
usim = BatchGetSymbols('USIM5.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
usim.df = usim$df.tickers
usim.nova = data.frame(lapply(usim.df[,-c(7:10)],function(x) x/x[1]))
usim.nova$data = usim.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
usim.nova.merge = data.frame(data = usim.nova$data, USIM5 = usim.nova$price.adjusted)



# HGTX3 - Retornando informações da ação
hgtx = BatchGetSymbols('HGTX3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
hgtx.df = hgtx$df.tickers
hgtx.nova = data.frame(lapply(hgtx.df[,-c(7:10)],function(x) x/x[1]))
hgtx.nova$data = hgtx.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
hgtx.nova.merge = data.frame(data = hgtx.nova$data, HGTX3 = hgtx.nova$price.adjusted)


# CMIG4 - Retornando informações da ação
cmig = BatchGetSymbols('CMIG4.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
cmig.df = cmig$df.tickers
cmig.nova = data.frame(lapply(cmig.df[,-c(7:10)],function(x) x/x[1]))
cmig.nova$data = cmig.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
cmig.nova.merge = data.frame(data = cmig.nova$data, CMIG4 = cmig.nova$price.adjusted)



# CSNA3 - Retornando informações da ação
csna = BatchGetSymbols('CSNA3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
csna.df = csna$df.tickers
csna.nova = data.frame(lapply(csna.df[,-c(7:10)],function(x) x/x[1]))
csna.nova$data = csna.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
csna.nova.merge = data.frame(data = csna.nova$data, CSNA3 = csna.nova$price.adjusted)


# CGAS3 - Retornando informações da ação
cgas = BatchGetSymbols('CGAS3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
cgas.df = cgas$df.tickers
cgas.nova = data.frame(lapply(cgas.df[,-c(7:10)],function(x) x/x[1]))
cgas.nova$data = cgas.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
cgas.nova.merge = data.frame(data = cgas.nova$data, CGAS3 = cgas.nova$price.adjusted)


# KLBN3 - Retornando informações da ação
klbn = BatchGetSymbols('KLBN3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
klbn.df = klbn$df.tickers
klbn.nova = data.frame(lapply(klbn.df[,-c(7:10)],function(x) x/x[1]))
klbn.nova$data = klbn.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
klbn.nova.merge = data.frame(data = klbn.nova$data, KLBN3 = klbn.nova$price.adjusted)

# SAPR4

# SAPR4 - Retornando informações da ação
sapr = BatchGetSymbols('SAPR4.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
sapr.df = sapr$df.tickers
sapr.nova = data.frame(lapply(sapr.df[,-c(7:10)],function(x) x/x[1]))
sapr.nova$data = sapr.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
sapr.nova.merge = data.frame(data = sapr.nova$data, SAPR4 = sapr.nova$price.adjusted)

# ABCB4

# ABCB4 - Retornando informações da ação
abcb = BatchGetSymbols('ABCB4.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
abcb.df = abcb$df.tickers
abcb.nova = data.frame(lapply(abcb.df[,-c(7:10)],function(x) x/x[1]))
abcb.nova$data = abcb.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
abcb.nova.merge = data.frame(data = abcb.nova$data, KLBN3 = abcb.nova$price.adjusted)







total.merge = merge(wege.nova.merge,vale.nova.merge, by = "data")
total.merge = merge(total.merge, mglu.nova.merge , by = "data")
total.merge = merge(total.merge, eqtl.nova.merge , by = "data")
total.merge = merge(total.merge, lren.nova.merge , by = "data")
total.merge = merge(total.merge, eztc.nova.merge , by = "data")
total.merge = merge(total.merge, petr.nova.merge , by = "data")

total.merge = merge(total.merge, lame.nova.merge , by = "data")
total.merge = merge(total.merge, bbdc.nova.merge , by = "data")
total.merge = merge(total.merge, itub.nova.merge , by = "data")
total.merge = merge(total.merge, usim.nova.merge , by = "data")
total.merge = merge(total.merge, hgtx.nova.merge , by = "data")
total.merge = merge(total.merge, cmig.nova.merge , by = "data")

# Incluidos em 30/09/19
total.merge = merge(total.merge, csna.nova.merge , by = "data")
total.merge = merge(total.merge, cgas.nova.merge , by = "data")
total.merge = merge(total.merge, klbn.nova.merge , by = "data")
total.merge = merge(total.merge, sapr.nova.merge , by = "data")
total.merge = merge(total.merge, abcb.nova.merge , by = "data")




# COmeçando o processo de normalizar os dados e calcular médias e desvio-padrão

replaced = replaceNaWithLatest(total.merge)

replaced2 = na.locf(replaced, fromLast = TRUE)

Adjcloses_new = data.frame(sapply(replaced2, function(x) as.numeric(x)))

Adjcloses1 = Adjcloses_new[,-1]

# Normalizando dados    
nova = data.frame(lapply(Adjcloses1,function(x) x/x[1]))

nova = na.omit(nova)

# Daily returns  
daily = sapply(nova,function(x) (diff(x)/x[-length(x)]))

# Vamos remover outliers que podem ter sido gerados quando calculamos os retornos
daily <- data.frame(daily)

daily <- rm.outlier(daily)

# =========================================================================================
# Returns/Volatility index
retvol <- data.frame(apply(daily,2,function (x) (mean(x)/sd(x))))

retvol2 <- data.frame(retvol[order(retvol$apply.daily..2..function.x...mean.x..sd.x...), drop = FALSE,])

meant <- apply(daily,2,function (x) mean(x))

sdev <- apply(daily,2,function (x) sd(x))

# daily3 <- apply(daily,2,function (x) remove_outliers(x))

tovar <- rbind (meant,sdev)

tovar <- data.frame(t(tovar))

ggplot(tovar, aes(x= sdev, y= meant, colour="green")) +geom_text(aes(label=rownames(tovar),
                                                                     colour=sdev,size=meant),hjust=0, vjust=0,check_overlap = F)+ scale_radius(range = c(4,6))+  
  xlab('Desvio-Padrão') + ylab('Média dos Retornos') + theme(text = element_text(size=10)) + coord_cartesian(xlim = c(0.015, 0.045), ylim = c(0, 0.003))
