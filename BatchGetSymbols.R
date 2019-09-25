# Bibliotecas necessárias para o estudo
library(ggplot2)
library(scales)

# Nesse estudo, vamos utilizar a biblioteca "Batch Get Symbols" criada pelo professor Marcelo S. Perlin, da UFRGS
# Mais sobre o prof. Marcelo pode ser encontrado no seguinte link: https://www.msperlin.com/blog/
library(BatchGetSymbols)

# Exemplo de importação de dados usando a biblioteca BatchGetSymbols
# Vamos importar dados do IBOV de 31 de dezembro de 2002 a 12 de setembro de 2019
bvsp = BatchGetSymbols('^BVSP', first.date = as.Date('2002-12-31'),
                       last.date = as.Date('2019-09-12'))

# Início da importação de dados da bolsa
# Vamos importar dados dos seguintes papéis: WEGE3, VALE3, MGLU3,EQTL3, LREN3, EZTC3, PETR4

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

total.merge = merge(wege.nova.merge,vale.nova.merge, by = "data")
total.merge = merge(total.merge, mglu.nova.merge , by = "data")
total.merge = merge(total.merge, eqtl.nova.merge , by = "data")
total.merge = merge(total.merge, lren.nova.merge , by = "data")
total.merge = merge(total.merge, eztc.nova.merge , by = "data")
total.merge = merge(total.merge, petr.nova.merge , by = "data")

# Plotar as séries temporais sem Magazine Luiza
p = ggplot() + 
  geom_line(data = total.merge, aes(x = total.merge$data, y = total.merge$WEGE3, color = "WEGE3"),size=0.72) +
  geom_line(data = total.merge, aes(x = total.merge$data, y = total.merge$VALE3, color = "VALE3"),size=0.72) +
  geom_line(data = total.merge, aes(x = total.merge$data, y = total.merge$EQTL3, color = "EQTL3"),size=0.72) +
  geom_line(data = total.merge, aes(x = total.merge$data, y = total.merge$LREN3, color = "LREN3"),size=0.72) +
  geom_line(data = total.merge, aes(x = total.merge$data, y = total.merge$EZTC3, color = "EZTC3"),size=0.72) +
  geom_line(data = total.merge, aes(x = total.merge$data, y = total.merge$PETR4, color = "PETR4"),size=0.72) +
  
  
  xlab('Data') +
  ylab('Preço Normalizado')+
  labs(colour = "Ações")+theme(axis.text=element_text(size=12),
                               axis.title=element_text(size=14,face="bold"))

print(p)

# Plotar as séries temporais incluindo Magazine Luiza
d = ggplot() + 
  geom_line(data = total.merge, aes(x = total.merge$data, y = total.merge$WEGE3, color = "WEGE3"),size=0.72) +
  geom_line(data = total.merge, aes(x = total.merge$data, y = total.merge$VALE3, color = "VALE3"),size=0.72) +
  geom_line(data = total.merge, aes(x = total.merge$data, y = total.merge$MGLU3, color = "MGLU3"),size=0.72) +
  geom_line(data = total.merge, aes(x = total.merge$data, y = total.merge$EQTL3, color = "EQTL3"),size=0.72) +
  geom_line(data = total.merge, aes(x = total.merge$data, y = total.merge$LREN3, color = "LREN3"),size=0.72) +
  geom_line(data = total.merge, aes(x = total.merge$data, y = total.merge$EZTC3, color = "EZTC3"),size=0.72) +
  geom_line(data = total.merge, aes(x = total.merge$data, y = total.merge$PETR4, color = "PETR4"),size=0.72) +
  
  
  xlab('Data') +
  ylab('Preço Normalizado')+
  labs(colour = "Ações")+theme(axis.text=element_text(size=12),
                               axis.title=element_text(size=14,face="bold"))

print(d)
