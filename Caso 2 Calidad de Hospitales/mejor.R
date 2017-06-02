###Parte 1
setwd("~/GitHub/Programaci-n_Actuarial_III")
mejor <- function(estado,resultado){
###ectura de datos
outcome <- read.csv("outcome-of-care-measures.csv",  na.strings = "Not Available") 
###Revisión de la validez de estado y resultado 

if ((resultado != "ataque") && (resultado != "falla") && (resultado != "neumonia")){
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
    
###Regresa el nombre del hospital con la tasa más baja de mortalidad de 30 días 
    
extraedatos <- subset(caso, caso$State==estado)
minmortalidad <- min(extraedatos[,3], na.rm = TRUE)
extraedatos2 <- subset(extraedatos,extraedatos[,3]==minmortalidad)
hospital <- extraedatos2$Hospital.Name
hospital
}

###Ejemplos
mejor("TX", "ataque")
mejor("TX", "falla")
mejor("MD", "ataque") 
mejor("MD", "neumonia")
mejor("BB", "ataque") 
mejor("NY", "atakue") 




