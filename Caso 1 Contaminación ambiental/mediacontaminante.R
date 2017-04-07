

###Parte 1
directorio <- "~/GitHub/Programaci-n_Actuarial_III/specdata"

mediacontaminante <- function(directorio, contaminante, id = 1:332){
    for(i in id){
        if(i<10){
            dato<-read.csv(paste("00",i,".csv",sep=""))
        }else if (i>=10 && i<100){
            
            dato<-read.csv(paste("0",i,".csv",sep=""))
        }else{
            dato<-read.csv(paste(i,".csv",sep=""))
        }
        datos <- c(dato[,contaminante])
        medias <- mean(datos, na.rm=TRUE)
    }
    mediafinal <- mean(medias)
    mediafinal
}
#"Sulfate" = 2 y "Nitrate" = 3
mediacontaminante(directorio,"nitrate",258)


