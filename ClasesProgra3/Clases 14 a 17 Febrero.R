#Clase de 16/02/2017
x <- 1
print(x)
x 
msg <- "Hola"

X <- #esta expresión está incompleta
  
msg1
msg2
msg3
...

x <- 1:20
x <- 1:50
x

a <- 1
b <- 1L
#class te dice que tipo de argumente es. Double, integer, etc

#creación de vectores
#con la función vector
vector("integer",5)
mi_vector <- vector("integer",5)

#con la función 
x1 <- c(0.5,0.6)
x2 <- c(TRUE,FALSE)
x3 <- c(T,F)
x4 <- c("a","b","c")
x5 <- 9:29
x6 <- c(2+1i,3-5i,3.14+1.186i)
x7 <- c(1.7,"a")
x8 <- c(TRUE,2)
x9 <- c("a",TRUE) 
x10 <- 0:6
y <- c(0:6,0.5)
as.logical(y)
as.character(y)
as.numeric(y)

y1 <- c("a","b","c")
as.numeric(y1)
as.logical(y1)
as.complex(y1)

y2 <- c(3.14,4.5,7.3,9.9)
as.integer(y2)

#listas
y3 <- list(1,"a",TRUE,1+4i,1:100)
y3

#matrices
m <- matrix(nrow =2, ncol=3)
m
dim(m)
attributes(m)

m1 <- matrix(1:6,nrow =2, ncol=3,byrow = TRUE)
m1

m2 <- 1:10
m2
dim(m2) <- c(5,2)
m2

i <- 1:3
j <- 10:12
cbind(i,j)
rbind(i,j)

k <- factor(c("yes","yes","no","yes","no"))
k
table(k)
unclass(k)

k1 <- factor(c("yes","yes","no","yes","no"),levels = c("yes","no"))
k1
table(k1)
unclass(k1)

#Valores faltantes
#nan es not a number
#na es valor faltante
#NaN es también NA pero no siempre lo contrario

w <- c(1,2,NA,10,3,NaN)
is.na(w)
is.nan(w)
w <- data.frame(foo=1:4,bar=c(T,T,F,T))
w
nrow(w)
ncol(w)

w <- 1:3
names(w)
names(w)<-c("foo","bar","biz")
w

e <- list(1,2,3)
e
e <- list(a=1,b=2,c=3)
e

f <- matrix(1:4,2,2)
f
dimnames(f)
dimnames(f)  <- list(c("a","b"),c("c","d"))
f
?read.table
?read.csv
 j <- data.frame(a=1,b="a")
 dput (j)
 dput(j,"j.R")
 dget("j.R")
 j <- dget("j.R")
 getwd()
 
 
 