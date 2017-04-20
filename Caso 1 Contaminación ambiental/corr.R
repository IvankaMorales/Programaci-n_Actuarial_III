###Parte 3
 
corr <- function(directorio = "~/GitHub/Programaci-n_Actuarial_III/specdata" , horizonte=0){
    setwd <- directorio
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
        
        corre <- data.matrix(dato)
        coco<- corre[complete.cases(corre),]
        if(nrow(coco)>horizonte){
            #"Sulfate" = 2 y "Nitrate" = 3
            g<- cor(coco[,2],coco[,3])
            m<-c(m,g)
        }       
    }
    print(m)
    
}
corr(,horizonte=800)

