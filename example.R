###K-means
data=read.csv("c:/Users/smoeller/Documents/MSCS/CS5542/Clustering 2/data.csv")
x<-rbind(data$Lat,data$Lon)
x<-t(x)
km<-kmeans(x,13,20)
plot(x,col=km$cluster)

###EM
library(EMCluster)
data=read.csv("c:/Users/smoeller/Documents/MSCS/CS5542/Clustering 2/data.csv")
x<-rbind(data$Lat,data$Lon)
x<-t(x)
ret.1<-starts.via.svd(x,nclass=13,method="em")
plotem(ret.1,x)