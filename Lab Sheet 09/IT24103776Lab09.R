setwd("C:\\Users\\hasar\\OneDrive\\Desktop\\Lab 09")
x<-rnorm(25, mean = 45, sd = 2)
t.test(x, mu=46, alternative= "less")