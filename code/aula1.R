# Interface de R e Python
library(reticulate)
repl_python() 

os <- import("os")
os$listdir(".")

# ordenando
(x = c(186,402,191,20,7,124))  # Criando e apresentando o vetor original de dados brutos
sort(x)
sort(x, decreasing = T)

# leitura de dados e tabelas
hosp <- read.table('http://www.filipezabala.com/data/hospital.txt', head = T)
dim(hosp)       # Dimensão: 100 linhas por 2 colunas
head(hosp)
a <- hosp$altura
table(a)

# histograa
(f <- hist(a)$counts)                
(f <- hist(a, breaks = 'Scott')$counts)
(f <- hist(a, breaks = 'FD')$counts)
?hist
?mean

# gráficos
library(plotly)

USPersonalExpenditure <- data.frame("Categorie"=rownames(USPersonalExpenditure), USPersonalExpenditure)
data <- USPersonalExpenditure[,c('Categorie', 'X1960')]

fig <- plot_ly(data, labels = ~Categorie, values = ~X1960, type = 'pie')
fig <- fig %>% layout(title = 'United States Personal Expenditures by Categories in 1960',
                      xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                      yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

fig

# prob
pnorm(-2)
qnorm(0.02275013)
qt(0.025,9)
qt(0.975,9)
qnorm(0.025)
qnorm(0.975)

# usando a função prop.test, sem a correção de Yates
binom.test(9, 12, 0.5, alternative = 'greater')
