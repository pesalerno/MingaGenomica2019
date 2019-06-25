
####################################
###  PCAdapt ANALYSIS - Re-Done ####
####################################
###loading package and file
library(pcadapt)
file<-"puma-FINAL.ped"
myFile<-read.pcadapt(file, type="ped")
myFile
#NOTE:by default data is assumed to be diploid



##################################
### 1. DETERMINE THE DESIRED K ###
##################################
x <- pcadapt(myFile, K=20) ###default maf = 0.05
plot(x,option="screeplot")
##The idea is to choose the number of PCs after which population structure
##is not evident. The "ideal" cluster scenario seems to be rarly seen 
##(definitely in my datasets), so sometimes it's a little tricky. In this case, 
##I believe there is a choice between K=2 (MOST of the structure) and K=4 (ALL 
##of the structure). 

##We could also mess around with maf thresholds and see if a different number of K is inferred...? 
x2 <- pcadapt(myFile, K=20, min.maf = 0.01)
plot(x2,option="screeplot") ##RESULT: NOPE!! they look exactly the same... 

####################################
### 2. GENOME SCANS WITH PCAdapt ###
####################################
library(qvalue)
##We will infer outliers using two thresholds of K and two thresholds of maf: 
##1. K=2, maf=0.05
x<-pcadapt(myFile,K=2)
plot(x,option="manhattan", threshold=0.1)
plot(x,option="qqplot", threshold=0.1)
hist(x$pvalues,xlab="p-values",main=NULL,breaks=50)
plot(x,option="stat.distribution")
qval<-qvalue(x$pvalues)$qvalues
alpha<-0.1
outliers<-which(qval<alpha)
get.pc(x, outliers)

##################
##2. K=2, maf=0.01
x2<-pcadapt(myFile,K=2, min.maf = 0.01)
plot(x2,option="manhattan", threshold=0.1)
plot(x2,option="qqplot", threshold=0.1)
hist(x2$pvalues,xlab="p-values",main=NULL,breaks=50)
plot(x2,option="stat.distribution")
qval2<-qvalue(x2$pvalues)$qvalues
alpha2<-0.1
outliers2<-which(qval2<alpha2)
get.pc(x2, outliers2)

##################
##3. K=4, maf=0.05
x3<-pcadapt(myFile,K=4, min.maf = 0.05)
plot(x3,option="manhattan", threshold=0.1)
plot(x3,option="qqplot", threshold=0.1)
hist(x3$pvalues,xlab="p-values",main=NULL,breaks=50)
plot(x3,option="stat.distribution")
qval3<-qvalue(x3$pvalues)$qvalues
alpha3<-0.1
outliers3<-which(qval3<alpha3)
get.pc(x3, outliers3)

##################
##4. K=4, maf=0.01
x4<-pcadapt(myFile,K=4, min.maf = 0.01)
plot(x4,option="manhattan", threshold=0.1)
plot(x4,option="qqplot", threshold=0.1)
hist(x4$pvalues,xlab="p-values",main=NULL,breaks=50)
plot(x4,option="stat.distribution")
qval4<-qvalue(x4$pvalues)$qvalues
alpha4<-0.1
outliers4<-which(qval4<alpha4)
get.pc(x4, outliers4)
