###Parte 3
setwd("~/GitHub/Programaci-n_Actuarial_III")
rankingcompleto <- function(resultado, num="mejor"){
###Lectura de datos 
outcome <- read.csv("outcome-of-care-measures.csv",colClasses = "character") 

###Revisión de la validez de estado y resultado 
    
if ((resultado != "ataque") && (resultado != "falla") &&(resultado != "neumonia")) {
    stop ("resultado inválido")
}
caso<- if (resultado == "ataque") {
    outcome[c(2,7,11)] 
    } else if (resultado == "falla") {
    outcome[c(2,7,17)] 
    } else {
    outcome[c(2,7,23)] 
}      
###Para cada estado, encuentra el hospital con la posición dada. 
edo <- sort(unique(outcome$State)) #sort ordena de forma asencente y unique elimina elementos duplicados
ed <- vector("character")
edos <- vector("character")
estados <- levels(edo)
    
for (estado in edo){
extraedatos <- subset(caso,caso$State==estado  & !caso[[3]]=="Not Available")
lista<-extraedatos[order(as.numeric(extraedatos[[3]]),extraedatos[[1]]),]
if (num=="peor"){
peor<-lista[which.max(lista[[3]]),]
hospital <- peor$Hospital.Name
ed <- c(ed,hospital)
    }else if(num=="mejor"){
        best<-lista[which.min(lista[[3]]),] #wich dvuelve un vector de los índices 
        hospital <- best$Hospital.Name
        ed <- c(ed,hospital)
    }else {
        hospital<-lista[num,1]
        ed <- c(ed,hospital)  
    }
        edos <- c(edos, edo)
}
    
###Regresa un data frame con el nombre del hospital y la abreviatura del nombre del estado al que pertenece. 
    
    tabla <- data.frame(ed,edos)
    colnames(tabla) <- c("hospital", "state")
    rownames(tabla)<- estados
    tabla
}

###Ejemplos
head(rankingcompleto("ataque", 20), 10)
tail(rankingcompleto("neumonia", "peor"), 3)
tail(rankingcompleto("falla"), 10)




