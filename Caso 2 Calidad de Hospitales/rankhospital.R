###Parte 2
setwd("~/GitHub/Programaci-n_Actuarial_III")
rankhospital <- function(estado,resultado,num="mejor"){
###Lectura de datos
 outcome <- read.csv("outcome-of-care-measures.csv",na.strings = "Not Available") 

###Revisión de la validez de estado y resultado 
    
if ((resultado != "ataque") && (resultado != "falla") && (resultado != "neumonia")) {
    stop ("resultado inválido")
    }
caso<- if (resultado == "ataque") {
    outcome[c(2,7,11)] 
    } else if (resultado == "falla") {
        outcome[c(2,7,17)] 
    } else {
        outcome[c(2,7,23)] 
}      
edo <- as.character(outcome$State)
    if(!(estado %in% edo)){
        stop("estado inválido")
}
    
###Regresa el nombre del hospital con el puesto dado de la tasa másbaja de mortalidad de 30 días 
extraedatos <- subset(caso,caso$State==estado)
tabla<-extraedatos[order(as.numeric(extraedatos[[3]]),extraedatos[[1]]),]
if (num=="peor"){
    extraedatos <- subset(caso,caso$State==estado)
    peor <- max(extraedatos[,3], na.rm = TRUE)
    extraedatos2 <- subset(extraedatos,extraedatos[,3]==peor)
    mejorhospital <- extraedatos2$Hospital.Name
    mejorhospital
    }else if(num=="mejor"){
        extraedatos <- subset(caso, caso$State==estado)
        best <- min(extraedatos[,3], na.rm = TRUE)
        extraedatos2 <- subset(extraedatos,extraedatos[,3]==best)
        mejorhospital <- extraedatos2$Hospital.Name
        mejorhospital
    }else if(num > nrow(extraedatos)){
        stop(return(NA))
    }else {
        mejorhospital<-tabla[num,1]
        mejorhospital  
    }
}

###Ejemplos
rankhospital("TX", "falla", 4)
rankhospital("MD", "ataque", "peor") 
rankhospital("MN", "ataque", 5000)

