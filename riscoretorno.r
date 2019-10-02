library(ggplot2)
library(scales)
library(BatchGetSymbols)
library(data.table)
library(zoo)

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
abcb.nova.merge = data.frame(data = abcb.nova$data, ABCB4 = abcb.nova$price.adjusted)

# FJTA4

# FJTA4 - Retornando informações da ação
fjta = BatchGetSymbols('FJTA4.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
fjta.df = fjta$df.tickers
fjta.nova = data.frame(lapply(fjta.df[,-c(7:10)],function(x) x/x[1]))
fjta.nova$data = fjta.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
fjta.nova.merge = data.frame(data = fjta.nova$data, FJTA4 = fjta.nova$price.adjusted)

# SBSP3

# SBSP3 - Retornando informações da ação
sbsp = BatchGetSymbols('SBSP3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
sbsp.df = sbsp$df.tickers
sbsp.nova = data.frame(lapply(sbsp.df[,-c(7:10)],function(x) x/x[1]))
sbsp.nova$data = sbsp.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
sbsp.nova.merge = data.frame(data = sbsp.nova$data, SBSP3 = sbsp.nova$price.adjusted)

# FIBR3

# FIBR3 - Retornando informações da ação
fibr = BatchGetSymbols('FIBR3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
fibr.df = fibr$df.tickers
fibr.nova = data.frame(lapply(fibr.df[,-c(7:10)],function(x) x/x[1]))
fibr.nova$data = fibr.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
fibr.nova.merge = data.frame(data = fibr.nova$data, FIBR3 = fibr.nova$price.adjusted)

# MRVE3

# MRVE3 - Retornando informações da ação
mrve = BatchGetSymbols('MRVE3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
mrve.df = mrve$df.tickers
mrve.nova = data.frame(lapply(mrve.df[,-c(7:10)],function(x) x/x[1]))
mrve.nova$data = mrve.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
mrve.nova.merge = data.frame(data = mrve.nova$data, MRVE3 = mrve.nova$price.adjusted)


# ENBR3

# ENBR3 - Retornando informações da ação
enbr = BatchGetSymbols('ENBR3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
enbr.df = enbr$df.tickers
enbr.nova = data.frame(lapply(enbr.df[,-c(7:10)],function(x) x/x[1]))
enbr.nova$data = enbr.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
enbr.nova.merge = data.frame(data = enbr.nova$data, ENBR3 = enbr.nova$price.adjusted)

# CYRE3

# CYRE3 - Retornando informações da ação
cyre = BatchGetSymbols('CYRE3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
cyre.df = cyre$df.tickers
cyre.nova = data.frame(lapply(cyre.df[,-c(7:10)],function(x) x/x[1]))
cyre.nova$data = cyre.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
cyre.nova.merge = data.frame(data = cyre.nova$data, CYRE3 = cyre.nova$price.adjusted)

# TUPY3

# TUPY3 - Retornando informações da ação
tupy = BatchGetSymbols('TUPY3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
tupy.df = tupy$df.tickers
tupy.nova = data.frame(lapply(tupy.df[,-c(7:10)],function(x) x/x[1]))
tupy.nova$data = tupy.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
tupy.nova.merge = data.frame(data = tupy.nova$data, TUPY3 = tupy.nova$price.adjusted)

# ELET3

# ELET3 - Retornando informações da ação
elet = BatchGetSymbols('ELET3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
elet.df = elet$df.tickers
elet.nova = data.frame(lapply(elet.df[,-c(7:10)],function(x) x/x[1]))
elet.nova$data = elet.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
elet.nova.merge = data.frame(data = elet.nova$data, ELET3 = elet.nova$price.adjusted)


# BBAS3

# BBAS3 - Retornando informações da ação
bbas = BatchGetSymbols('BBAS3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
bbas.df = bbas$df.tickers
bbas.nova = data.frame(lapply(bbas.df[,-c(7:10)],function(x) x/x[1]))
bbas.nova$data = bbas.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
bbas.nova.merge = data.frame(data = bbas.nova$data, BBAS3 = bbas.nova$price.adjusted)

# RAPT4

# RAPT4 - Retornando informações da ação
rapt = BatchGetSymbols('RAPT4.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
rapt.df = rapt$df.tickers
rapt.nova = data.frame(lapply(rapt.df[,-c(7:10)],function(x) x/x[1]))
rapt.nova$data = rapt.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
rapt.nova.merge = data.frame(data = rapt.nova$data, RAPT4 = rapt.nova$price.adjusted)



# POMO4

# POMO4 - Retornando informações da ação
pomo = BatchGetSymbols('POMO4.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
pomo.df = pomo$df.tickers
pomo.nova = data.frame(lapply(pomo.df[,-c(7:10)],function(x) x/x[1]))
pomo.nova$data = pomo.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
pomo.nova.merge = data.frame(data = pomo.nova$data, POMO4 = pomo.nova$price.adjusted)


# GOAU4

# GOAU4 - Retornando informações da ação
goau = BatchGetSymbols('GOAU4.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
goau.df = goau$df.tickers
goau.nova = data.frame(lapply(goau.df[,-c(7:10)],function(x) x/x[1]))
goau.nova$data = goau.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
goau.nova.merge = data.frame(data = goau.nova$data, GOAU4 = goau.nova$price.adjusted)



# ENAT3

# ENAT3 - Retornando informações da ação
enat = BatchGetSymbols('ENAT3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
enat.df = enat$df.tickers
enat.nova = data.frame(lapply(enat.df[,-c(7:10)],function(x) x/x[1]))
enat.nova$data = enat.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
enat.nova.merge = data.frame(data = enat.nova$data, ENAT3 = enat.nova$price.adjusted)


# MYPK3

# MYPK3 - Retornando informações da ação
mypk = BatchGetSymbols('MYPK3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
mypk.df = mypk$df.tickers
mypk.nova = data.frame(lapply(mypk.df[,-c(7:10)],function(x) x/x[1]))
mypk.nova$data = mypk.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
mypk.nova.merge = data.frame(data = mypk.nova$data, MYPK3 = mypk.nova$price.adjusted)


# BTOW3

# BTOW3 - Retornando informações da ação
btow = BatchGetSymbols('BTOW3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
btow.df = btow$df.tickers
btow.nova = data.frame(lapply(btow.df[,-c(7:10)],function(x) x/x[1]))
btow.nova$data = btow.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
btow.nova.merge = data.frame(data = btow.nova$data, BTOW3 = btow.nova$price.adjusted)


# EGIE3

# EGIE3 - Retornando informações da ação
egie = BatchGetSymbols('EGIE3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
egie.df = egie$df.tickers
egie.nova = data.frame(lapply(egie.df[,-c(7:10)],function(x) x/x[1]))
egie.nova$data = egie.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
egie.nova.merge = data.frame(data = egie.nova$data, EGIE3 = egie.nova$price.adjusted)



# MRFG3

# MRFG3 - Retornando informações da ação
mrfg = BatchGetSymbols('MRFG3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
mrfg.df = mrfg$df.tickers
mrfg.nova = data.frame(lapply(mrfg.df[,-c(7:10)],function(x) x/x[1]))
mrfg.nova$data = mrfg.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
mrfg.nova.merge = data.frame(data = mrfg.nova$data, MRFG3 = mrfg.nova$price.adjusted)


# UGPA3

# UGPA3 - Retornando informações da ação
ugpa = BatchGetSymbols('UGPA3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
ugpa.df = ugpa$df.tickers
ugpa.nova = data.frame(lapply(ugpa.df[,-c(7:10)],function(x) x/x[1]))
ugpa.nova$data = ugpa.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
ugpa.nova.merge = data.frame(data = ugpa.nova$data, UGPA3 = ugpa.nova$price.adjusted)


# GOLL4

# GOLL4 - Retornando informações da ação
goll = BatchGetSymbols('GOLL4.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
goll.df = goll$df.tickers
goll.nova = data.frame(lapply(goll.df[,-c(7:10)],function(x) x/x[1]))
goll.nova$data = goll.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
goll.nova.merge = data.frame(data = goll.nova$data, GOLL4 = goll.nova$price.adjusted)


# RADL3

# RADL3 - Retornando informações da ação
radl = BatchGetSymbols('RADL3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
radl.df = radl$df.tickers
radl.nova = data.frame(lapply(radl.df[,-c(7:10)],function(x) x/x[1]))
radl.nova$data = radl.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
radl.nova.merge = data.frame(data = radl.nova$data, RADL3 = radl.nova$price.adjusted)


# PCAR4

# PCAR4 - Retornando informações da ação
pcar = BatchGetSymbols('PCAR4.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
pcar.df = pcar$df.tickers
pcar.nova = data.frame(lapply(pcar.df[,-c(7:10)],function(x) x/x[1]))
pcar.nova$data = pcar.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
pcar.nova.merge = data.frame(data = pcar.nova$data, PCAR4 = pcar.nova$price.adjusted)


# CARD3

# CARD3 - Retornando informações da ação
card = BatchGetSymbols('CARD3.SA',first.date = as.Date('2010-12-31'),last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")
card.df = card$df.tickers
card.nova = data.frame(lapply(card.df[,-c(7:10)],function(x) x/x[1]))
card.nova$data = card.df$ref.date

# Fazendo modificação de forma a conter apenas data e o preço ajustado
card.nova.merge = data.frame(data = card.nova$data, CARD3 = card.nova$price.adjusted)




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


# Incluidos em 01/10/19
total.merge = merge(total.merge, fjta.nova.merge , by = "data")
total.merge = merge(total.merge, sbsp.nova.merge , by = "data")
#total.merge = merge(total.merge, fibr.nova.merge , by = "data")
total.merge = merge(total.merge, mrve.nova.merge , by = "data")
total.merge = merge(total.merge, enbr.nova.merge , by = "data")
total.merge = merge(total.merge, cyre.nova.merge , by = "data")
total.merge = merge(total.merge, tupy.nova.merge , by = "data")
total.merge = merge(total.merge, elet.nova.merge , by = "data")
total.merge = merge(total.merge, bbas.nova.merge , by = "data")
total.merge = merge(total.merge, rapt.nova.merge , by = "data")
total.merge = merge(total.merge, pomo.nova.merge , by = "data")
total.merge = merge(total.merge, goau.nova.merge , by = "data")
#total.merge = merge(total.merge, enat.nova.merge , by = "data")
total.merge = merge(total.merge, mypk.nova.merge , by = "data")
total.merge = merge(total.merge, btow.nova.merge , by = "data")
total.merge = merge(total.merge, egie.nova.merge , by = "data")
total.merge = merge(total.merge, mrfg.nova.merge , by = "data")
total.merge = merge(total.merge, ugpa.nova.merge , by = "data")
total.merge = merge(total.merge, goll.nova.merge , by = "data")
total.merge = merge(total.merge, radl.nova.merge , by = "data")
total.merge = merge(total.merge, pcar.nova.merge , by = "data")
total.merge = merge(total.merge, card.nova.merge , by = "data")




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





# COmeçando o processo de normalizar os dados e calcular médias e desvio-padrão

replaced = replaceNaWithLatest(total.merge)

replaced2 = na.locf(replaced, fromLast = TRUE)

Adjcloses_new = data.frame(sapply(replaced2, function(x) as.numeric(x)))

Adjcloses1 = Adjcloses_new[,-1]

# Normalizando dados    
nova = data.frame(lapply(Adjcloses1,function(x) x/x[1]))

#nova = na.omit(nova)

# Daily returns  
daily = sapply(nova,function(x) (diff(x)/x[-length(x)]))

# Vamos remover outliers que podem ter sido gerados quando calculamos os retornos
daily = data.frame(daily)

daily = rm.outlier(daily)
daily = rm.outlier(daily)
daily = rm.outlier(daily)

# =========================================================================================
# Returns/Volatility index
retvol <- data.frame(apply(daily,2,function (x) (mean(x)/sd(x))))

retvol2 <- data.frame(retvol[order(retvol$apply.daily..2..function.x...mean.x..sd.x...), drop = FALSE,])

meant <- apply(daily,2,function (x) mean(x))

sdev <- apply(daily,2,function (x) sd(x))

# daily3 <- apply(daily,2,function (x) remove_outliers(x))

tovar <- rbind (meant,sdev)

tovarintermediario = data.frame(tovar)

#tovarspecial = tovarintermediario[,!(colnames(tovarintermed) %in% c("MGLU3","FJTA4"))]

tovarspecial = tovarintermediario[,!(colnames(tovarintermed) %in% c("FJTA4"))]

tovar = data.frame(t(tovar))

tovarspecial = data.frame(t(tovarspecial))

p = ggplot(tovar, aes(x= sdev, y= meant, colour="green")) + geom_text(aes(label=rownames(tovar),
    colour=sdev,size=meant), hjust=0, vjust=0,check_overlap = F)  + scale_radius(range = c(4,6))  + 
    xlab('Volatilidade ou Desvio-Padrão') + ylab('Média dos Retornos') + theme(text = element_text(size=12))   + 
    coord_cartesian(xlim = c(0.015, 0.058), ylim = c(-0.0015, 0.0023)) +
    labs(size = "Retorno Médio",colour = "Volatilidade")+
    theme(axis.text=element_text(size=14),axis.title=element_text(size=14,face="bold"))


q = ggplot(tovarspecial, aes(x= sdev, y= meant, colour="green")) + geom_text(aes(label=rownames(tovarspecial),
  colour=sdev,size=meant), hjust=0, vjust=0,check_overlap = T)  + scale_radius(range = c(4,6))  + 
  xlab('Volatilidade ou Desvio-Padrão') + ylab('Média dos Retornos') + theme(text = element_text(size=12))   + 
  coord_cartesian(xlim = c(0.015, 0.04), ylim = c(-0.00015, 0.0013)) +
  labs(size = "Retorno Médio",colour = "Volatilidade")+
  theme(axis.text=element_text(size=14),axis.title=element_text(size=14,face="bold"))
