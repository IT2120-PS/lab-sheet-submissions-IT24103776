setwd("C:\\Users\\Color More\\Desktop\\lab 08")

data<-read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
attach(data)

popmn<-mean(Weight.kg.)
popmn
popsd<-sd(Weight.kg.)
popsd

samples<-c()
col_names<-c()

for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  col_names<-c(col_names,paste('s',i))
}

colnames(samples)<-col_names
samples

s.mean<-apply(samples,2,mean)
s.mean
s.sds<-apply(samples,2,sd)
s.sds


mean_of_sample_means <- mean(s.mean)
sd_of_sample_means   <- sd(s.mean)

mean_of_sample_means
sd_of_sample_means

theoretical_se <- popsd / sqrt(6)
theoretical_se
