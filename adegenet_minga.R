library("ape")
library("pegas")
library("seqinr")
library("ggplot2")
library("adegenet")
library("hierfstat")




myFile <- import2genind("filename.stru") ??? SNPs and ??? inds


##QUESTIONS FOR STRUCTURE FILES:
### Which column contains the population factor ('0' if absent)? 
###answer:2
###Which other optional columns should be read (press 'return' when done)? 
###Which row contains the marker names ('0' if absent)? 
###Answer:1

myFile ##look at your transformed genind file


########################
help(scaleGen)
X <- scaleGen(myFile, NA.method="zero")
X[1:5,1:5]



pca1<-dudi.pca(X,cent=FALSE,scale=FALSE,scannf=FALSE,nf=3)
myCol <-c("darkgreen","darkblue")
s.class(pca1$li,pop(myFile), col=myCol)
add.scatter.eig(pca1$eig[1:20], 3,1,2)

###############
###############

plot(pca1$li, col=myCol, cex=3)
###to plot with funky colors
s.class(pca1$li,pop(myFile),xax=1,yax=2,col=myCol,axesell=FALSE,
		cstar=0,cpoint=3,grid=FALSE)


############################################
#####   to find names of outliers    #######
############################################
s.label(pca1$li)




################################################
###  NEIGHBOR-JOINING TREE COMPARED TO PCA   ###
################################################
library(ape)
tre<-nj(dist(as.matrix(X)))
plot(tre,typ="fan",cex=0.7)


myCol<-colorplot(pca1$li,pca1$li,transp=TRUE,cex=4)
abline(h=0,v=0,col="grey")


plot(tre,typ="fan",show.tip=FALSE)
tiplabels(pch=20,col=myCol,cex=2)




####################################
#####   DAPC by original pops   ####
####################################


dapc2<-dapc(X,pop(myFile))
dapc2
scatter(dapc2)
summary(dapc2)
contrib<-loadingplot(dapc2$var.contr,axis=1,thres=.07,lab.jitter=1)



####################
###  COMPOPLOT   ###
####################
compoplot(dapc2,posi="bottomright",lab="",
			ncol=1,xlab="individuals") ##using original population IDs

##lab<-pop(myFile)
##compoplot(dapc2,subset=1:50, posi="bottomright",lab="",
			ncol=2, lab="lab")

##To find the potential migrant IDs:
assignplot(dapc2, subset=1:10)			
assignplot(dapc2, subset=51:100)
assignplot(dapc2, subset=101:134)

