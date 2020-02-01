#DATA Example
X<-matrix(c(1,2,3,4,9,5,10,8,8,12),nrow = 5)
#Xbar of the matrix
Xbar<-rowMeans(t(X))
#X centered 
Xc<-t(X)-Xbar
#Varriances ad ecarts
variance<-rowSums((t(X)-Xbar)^2)/dim(X)[1]
ecarts<-sqrt(variance)
#Covariance
covariance<-sum(cov(X))/dim(X)[1]
#V matrix
V<-(Xc%*%t(Xc))/(dim(X)[1])
#R matrix
D<-1/ecarts * diag(dim(X)[2])
Xcr<-t(Xc) %*% D
R<-(t(Xcr)%*%Xcr)/(dim(X)[1])
#cleaner values and vectors
values<-eigen(R)$values
vectors<-eigen(R)$vectors
#Principal Components Coordinators
PC<- Xcr %*% vectors
#Variables coordinators
VC <- vectors / sqrt(values)
