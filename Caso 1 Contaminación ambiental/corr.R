###Parte 3
directorio <- "~/GitHub/Programaci-n_Actuarial_III/specdata"  
corr <- function(directorio, horizonte=0){
    iv <- 1:horizonte
     
   m <- vector("numeric")
    g <- vector("numeric")
    id <- 1:332
    for(n in id){
        if(n<10){
            
            dato<-read.csv(paste("00",n,".csv",sep=""))
        }else if (n>=10 && n<100){
            
            dato<-read.csv(paste("0",n,".csv",sep=""))
        }else{
            dato<-read.csv(paste(n,".csv",sep=""))
        }
        
        corre <- subset(dato,complete.cases(dato),select=c(sulfate,nitrate))
            if(horizonte > 0){
            j <- corre[iv,]
            g<- cor(j$sulfate,j$nitrate)
            m<-c(m,g)
        }else{
            m <- cor(core$sulfate,corre$nitrate)
            m <- c(m,g)
        }
    }
    print(m)

}
corr(directorio,horizonte=8)

