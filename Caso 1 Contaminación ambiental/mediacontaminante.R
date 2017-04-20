###Parte 1
mediacontaminante <- function(directorio="~/GitHub/Programaci-n_Actuarial_III/specdata", contaminante, id = 1:332){
    setwd <- directorio
    datos <- c()
    for(i in id){
        if(i<10){
            dato<-read.csv(paste("00",i,".csv",sep=""))
        }else if (i>=10 && i<100){
            
            dato<-read.csv(paste("0",i,".csv",sep=""))
        }else{
            dato<-read.csv(paste(i,".csv",sep=""))
        }
        datos <- c(datos,dato[,contaminante])
        medias <- mean(datos, na.rm=TRUE)
    }
      medias
}
#"Sulfate" = 2 y "Nitrate" = 3
mediacontaminante(,"sulfate",300)


