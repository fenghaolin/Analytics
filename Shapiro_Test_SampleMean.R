## Surprising 'Hypothesis Testing' result even when theoretically it should be close to normal
## It is modified from 'Applied Regression and Classificaiton with R' by Xizhi Wu.
set.seed(123)
## Sample means of random sample from t(3) with sample-size=10000
## plot the histogram of the results sample-mean and the fitted normal curve
## 
y=sapply(1:1000, FUN = function(x){mean(rt(10000,3))})
hist(y,breaks=30,probability = T,
     main='histogram of simulated sample-mean of t(3) with sample-size=10000\n vs. Fitted normal curve'
     )
x=seq(min(y),max(y),length.out = 100)
lines(x,dnorm(x,mean=mean(y),sd=sd(y)),col='blue')
## The Shapiro Normality test yields an extremely small p-value
## suggests that the Null hypothesis should be rejected at any level >7.32e-5
shapiro.test(y)
