library(ggplot2)
library(scales)
library(BatchGetSymbols)

bvsp = BatchGetSymbols('^BVSP', first.date = as.Date('2002-12-31'),
                       last.date = as.Date('2017-09-12'))

ggplot(bvsp$df.tickers, aes(x = ref.date, y = price.close))+
  geom_line()+
  scale_y_discrete(limits=c(10000, 20000, 30000, 40000, 50000, 60000,
                            70000))+
  scale_x_date(breaks = date_breaks("1 years"),
               labels = date_format("%Y"))+
  xlab('')+ylab('Pontos')+
  labs(title='Índice Bovespa',
       caption='Fonte: analisemacro.com.br com dados do Yahoo Finance.')


# ================================================================

bvsp = BatchGetSymbols('AMZN', first.date = as.Date('2002-12-31'),
                       last.date = as.Date('2017-09-12'))

ggplot(bvsp$df.tickers, aes(x = ref.date, y = price.close))+
  geom_line()+
  scale_y_discrete(limits=c(600, 700, 800, 900, 1000, 1100, 1200))+
  scale_x_date(breaks = date_breaks("1 years"),
               labels = date_format("%Y"))+
  xlab('')+ylab('Pontos')+
  labs(title='Índice Bovespa',
       caption='Fonte: analisemacro.com.br com dados do Yahoo Finance.')

# ================================================================

acn = BatchGetSymbols('ACN', first.date = as.Date('2002-12-31'),
                       last.date = as.Date('2019-09-12'))

ggplot(acn$df.tickers, aes(x = ref.date, y = price.close))+
  geom_line()+
  scale_y_discrete()+
  scale_x_date(breaks = date_breaks("1 years"),
               labels = date_format("%Y"))+
  xlab('')+ylab('Pontos')+
  labs(title='Índice Bovespa',
       caption='Fonte: analisemacro.com.br com dados do Yahoo Finance.')

# ================================================================

petr4 = BatchGetSymbols('PETR4.SA', first.date = as.Date('2002-12-31'),
                      last.date = as.Date('2019-09-12'),bench.ticker = "^BVSP")

ggplot(petr4$df.tickers, aes(x = ref.date, y = price.close))+
  geom_line()+
  scale_y_discrete()+
  scale_x_date(breaks = date_breaks("1 years"),
               labels = date_format("%Y"))+
  xlab('')+ylab('Pontos')+
  labs(title='Petrobrás',
       caption='Fonte: analisemacro.com.br com dados do Yahoo Finance.')

petr4df = petr4$df.tickers

Adjcloses1 = petr4df[,-c(7:10)]

nova = data.frame(lapply(Adjcloses1,function(x) x/x[1]))

nova$data = petr4df$ref.date

plot(nova$price.adjusted, type = "l")








ggplot(nova, aes(x = data, y = price.adjusted))+
  geom_line()+
  scale_y_discrete()+
  scale_x_date(breaks = date_breaks("1 years"),
               labels = date_format("%Y"))+
  xlab('')+ylab('Pontos')+
  labs(title='Petrobrás',
       caption='RETORNOS PETR4')






d <- ggplot() + 
  geom_line(data = aa, aes(x = Date1, y = aa$SAPR4, color = "SAPR4"),size=0.72) +
  geom_line(data = aa, aes(x = Date1, y = aa$SBSP3, color = "SBSP3"),size=0.72) +
  geom_line(data = aa, aes(x = Date1, y = aa$CGAS3, color = "CGAS3"),size=0.72) +
  
  xlab('Data') +
  ylab('Pre?o Normalizado')

d$labels$colour <- "Servi?os P?blicos"

print(d)







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



wege3
vale3
mglu3
eqtl3
lren3
eztc3
petr4



total.merge = merge(wege.nova.merge,vale.nova.merge, by = "data")
total.merge = merge(total.merge, mglu.nova.merge , by = "data")
total.merge = merge(total.merge, eqtl.nova.merge , by = "data")
total.merge = merge(total.merge, lren.nova.merge , by = "data")
total.merge = merge(total.merge, eztc.nova.merge , by = "data")
total.merge = merge(total.merge, petr.nova.merge , by = "data")




d <- ggplot() + 
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


p <- ggplot() + 
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


