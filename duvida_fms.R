# dados
mcor = c(1.0,  0.2, -0.50,  0.80,
         0.2,  1.0, -0.10, -0.70,
        -0.5, -0.1,  1.00,  0.01,
         0.8, -0.7,  0.01,  1.00)

mcov = c(225,  3.0, -15.0, 300.0,
           3,  1.0,  -0.2, -17.5,
         -15, -0.2,   4.0,   0.5,
         300, -17.5,  0.5, 625.0)

# montando as matrizes
mcor = matrix(mcor, nrow = 4, byrow = T)
mcov = matrix(mcov, nrow = 4, byrow = T)

# verificando
library(matrixcalc)

is.positive.definite(mcor)
is.positive.semi.definite(mcor)

is.positive.definite(mcov)
is.positive.semi.definite(mcov)
