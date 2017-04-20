###Parte 2
#directorio<-("~/GitHub/Programaci-n_Actuarial_III/specdata")
completos <- function(directorio="~/GitHub/Programaci-n_Actuarial_III/specdata", id = 1:332) {
    setwd <- directorio
    v = vector("numeric")
    for(i in id){
        if(i<10){
            dato<-read.csv(paste("00",i,".csv",sep=""))
        }else if (i>=10 && i<100){
            
            dato<-read.csv(paste("0",i,".csv",sep=""))
        }else{
            dato<-read.csv(paste(i,".csv",sep=""))
        }
        x<-complete.cases(dato)
        y<-dato[x,]
        p<-nrow(y)
        v<-c(v,p)
    }
    data.frame("id"= id,"nobs"=v)
}
completos(,id=1:332)
