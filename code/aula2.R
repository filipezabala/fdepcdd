# # Instalando pacotes
# packs <- c('devtools','VGAM','klaR','ellipse','rgl')
# new.packages <- packs[!(packs %in% installed.packages()[,"Package"])]
# if(length(new.packages)) install.packages(packs, dep=TRUE)
# update.packages(checkBuilt = TRUE, ask = FALSE)
# devtools::install_github('filipezabala/desempateTecnico', force = T)

# Chamando biblioteca
library(desempateTecnico)

bayes(c(.4,.3,.3), 1000)

v <- c(.27,.14,.14,.13,.04,.03,.03,.02,.02,.01,.01,.08)
r <- v/sum(v)
sum(r)
bayes(r,805)


# lendo dados
dat <- read.table('http://www.filipezabala.com/data/drinks.txt', head=T)
head(dat)
x <- dat$temp
y <- dat$gar
cor(x,y)
cor.test(x,y)

# ajustando modelos RLS
fit <- lm(y ~ x)
summary(fit)

fit0 <- lm(y ~ x - 1)
summary(fit0)


# ajustando modelos RLM
library(readxl)
url1 <- 'http://archive.ics.uci.edu/ml/machine-learning-databases/00242/ENB2012_data.xlsx'
download.file(url1, 'temp.xlsx', mode = 'wb')
energy <- read_excel('temp.xlsx')
str(energy)   # dando uma olhada nas variáveis
summary(energy)
energy
pairs(energy) # matriz de dispersão

fit0 <- lm(Y1 ~ X1 + X2 + X3 + X4 + X5 + X6 + X7 + X8, data = energy) # modelo saturado
summary(fit0)
fit1 <- step(fit0)
summary(fit1)

# validação gráfica
par(mfrow=c(2,2))
plot(fit0, which=1:4)
plot(fit1, which=1:4)

# predição
83.931762 -64.773432*0.62 -0.087289*514.5  +  0.060813*416.5 + 4.169954*7 + 19.932736*0.4 + 0.203777*5
83.931762 -64.773432*0.98 -0.087289*514.5  +  0.060813*416.5 + 4.169954*7 + 19.932736*0.4 + 0.203777*5

# exercício
?stats::predict

# series teporais
library(fpp2)

# arima
x <- 1:10
length(x)
length(diff(x))
?auto.arima

class(WWWusage)
plot(WWWusage)
plot(diff(WWWusage))
fit <- auto.arima(WWWusage)
fit
plot(forecast(fit,h=50))

# fits
# calling package
library(jurimetrics)
# example
plot(livestock)
plot(diff(livestock))
fits(livestock, show.sec.graph = T)

data(tjrs_year_month) # attaching data
tail(tjrs_year_month) # attaching data)

fits(tjrs_year_month$count)


USArrests
