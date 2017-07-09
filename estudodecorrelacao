---
output:
  word_document: default
  html_document: default
---
# Estudo de correlação entre ações da Bolsa de Valores de São Paulo

### Para realizar esse estudo, utilizei dados de 33 empresas com ações listadas na Bolsa de Valores de São Paulo. Para uma cada delas, utilizei o Yahoo Finanças (https://br.financas.yahoo.com/) para obter os dados no intervalo de tempo desejado e baixei o arquivo .csv correspondente. Finalmente, salvei todos os arquivos .csv em um diretório à parte, para facilitar a importação dos arquivos no R.

### O primeiro passo é carregar as libraries que precisaremos para o estudo
```{r setup, include=TRUE, warning=FALSE, message=FALSE}
library(ggplot2)
library(readr)
library(dplyr)
library(corrplot)
```

## Importando dados das ações
```{r, include=TRUE, warning=FALSE, message=FALSE}
# Insira aqui o diretório onde estão os arquivos .csv
path <- "C:/Users/..."

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

```

## Vamos plotar agora as ações por setor da economia
### Bancos
```{r, echo=F, warning=FALSE, message=FALSE, fig.width = 8}
# Criar gráfico da variação do preço das ações
aa <- Adjcloses

aa[ aa==0 ] <- NA

a <- ggplot() + 
  geom_line(data = aa, aes(x = Date1, y = aa$ABCB4, color = "ABCB4")) +
  geom_line(data = aa, aes(x = Date1, y = aa$BPAN4, color = "BPAN4")) +
  geom_line(data = aa, aes(x = Date1, y = aa$BBAS3, color = "BBAS3")) +
  geom_line(data = aa, aes(x = Date1, y = aa$BBDC4, color = "BBDC4")) +
  geom_line(data = aa, aes(x = Date1, y = aa$ITUB4, color = "ITUB4")) +
  xlab('Data') +
  ylab('Preço')

a$labels$colour <- "Bancos"

print(a)


```
  
### Mineradoras e Metalúrgicas
  
```{r, echo=F, warning=FALSE, message=FALSE, fig.width = 9}
b <- ggplot() + 
  geom_line(data = aa, aes(x = Date1, y = aa$USIM5, color = "USIM5")) +
  geom_line(data = aa, aes(x = Date1, y = aa$GOAU4, color = "GOAU4")) +
  geom_line(data = aa, aes(x = Date1, y = aa$CSNA3, color = "CSNA3")) +
  geom_line(data = aa, aes(x = Date1, y = aa$VALE5, color = "VALE5")) +

  xlab('Data') +
  ylab('Preço')

b$labels$colour <- "Mineradoras e Metalúrgicas"

print(b)

```
  
### Celulose
  
```{r, echo=F, warning=FALSE, message=FALSE, fig.width = 8}
c <- ggplot() + 
  geom_line(data = aa, aes(x = Date1, y = aa$FIBR3, color = "FIBR3")) +
  geom_line(data = aa, aes(x = Date1, y = aa$SUZB5, color = "SUZB5")) +
  
  xlab('Data') +
  ylab('Preço')

c$labels$colour <- "Celulose"

print(c)

```
  
### Serviços Públicos
  
```{r, echo=F, warning=FALSE, message=FALSE, fig.width = 9}
d <- ggplot() + 
  geom_line(data = aa, aes(x = Date1, y = aa$SAPR4, color = "SAPR4")) +
  geom_line(data = aa, aes(x = Date1, y = aa$SBSP3, color = "SBSP3")) +
  geom_line(data = aa, aes(x = Date1, y = aa$CGAS3, color = "CGAS3")) +
  
  xlab('Data') +
  ylab('Preço')

d$labels$colour <- "Serviços Públicos"

print(d)

```

### Energia Elétrica
  
```{r, echo=F, warning=FALSE, message=FALSE, fig.width = 9}
e <- ggplot() + 
  geom_line(data = aa, aes(x = Date1, y = aa$CMIG4, color = "CMIG4")) +
  geom_line(data = aa, aes(x = Date1, y = aa$ELET3, color = "ELET3")) +
  geom_line(data = aa, aes(x = Date1, y = aa$ELPL4, color = "ELPL4")) +
  geom_line(data = aa, aes(x = Date1, y = aa$ENBR3, color = "ENBR3")) +
  geom_line(data = aa, aes(x = Date1, y = aa$EQTL3, color = "EQTL3")) +
  
  xlab('Data') +
  ylab('Preço')

e$labels$colour <- "Energia Elétrica"

print(e)

```

### Construção
  
```{r, echo=F, warning=FALSE, message=FALSE, fig.width = 8}
f <- ggplot() + 
  geom_line(data = aa, aes(x = Date1, y = aa$EZTC3, color = "EZTC3")) +
  geom_line(data = aa, aes(x = Date1, y = aa$ELET3, color = "MRVE3")) +
  geom_line(data = aa, aes(x = Date1, y = aa$ELPL4, color = "CYRE3")) +
  
  xlab('Data') +
  ylab('Preço')

f$labels$colour <- "Construção"

print(f)

```

### Petróleo
  
```{r, echo=F, warning=FALSE, message=FALSE, fig.width = 8}
g <- ggplot() + 
  geom_line(data = aa, aes(x = Date1, y = aa$PETR4, color = "PETR4")) +
  geom_line(data = aa, aes(x = Date1, y = aa$QGEP3, color = "QGEP3")) +
  
  xlab('Data') +
  ylab('Preço')

g$labels$colour <- "Construção"

print(g)

```

### Maquinário
  
```{r, echo=F, warning=FALSE, message=FALSE, fig.width = 8}
h <- ggplot() + 
  geom_line(data = aa, aes(x = Date1, y = aa$MYPK3, color = "MYPK3")) +
  geom_line(data = aa, aes(x = Date1, y = aa$POMO4, color = "POMO4")) +
  geom_line(data = aa, aes(x = Date1, y = aa$RAPT4, color = "RAPT4")) +
  geom_line(data = aa, aes(x = Date1, y = aa$TUPY3, color = "TUPY3")) +
  geom_line(data = aa, aes(x = Date1, y = aa$WEGE3, color = "WEGE3")) +
  
  xlab('Data') +
  ylab('Preço')

h$labels$colour <- "Maquinário"

print(h)

```

### Varejo
  
```{r, echo=F, warning=FALSE, message=FALSE, fig.width = 8}
i <- ggplot() + 
  geom_line(data = aa, aes(x = Date1, y = aa$BTOW3, color = "BTOW3")) +
  geom_line(data = aa, aes(x = Date1, y = aa$LAME4, color = "LAME4")) +
  geom_line(data = aa, aes(x = Date1, y = aa$HGTX3, color = "HGTX3")) +
  geom_line(data = aa, aes(x = Date1, y = aa$LREN3, color = "LREN3")) +
  
  xlab('Data') +
  ylab('Preço')

i$labels$colour <- "Varejo"

print(i)

```

## Vamos agora criar uma matriz de correlação entre o preço das ações
```{r fig2, fig.height = 10, fig.width = 10, fig.align = "center",echo=F}
Adjcloses[,-c(1,35)] %>%
  cor(use="complete.obs", method="spearman") %>%
  corrplot(type="lower", method="number", diag=FALSE,number.cex=0.70,number.font=1)

```
