



draw <- rep(NA, 10000) # 10,000 is the number of samples of some size(30 in our example) drawn from the universe
for(i in 1:length(draw)){
  
  # Each draw-value is basically the mean of 30 ramdomly sampled 
  # observations from our Toy Universe
  
  draw[i] <- mean(sample(Universe,
                         size=200, # sample size 30
                         replace = T))
}

z<- (draw- mean(Universe))/ (sqrt(var(Universe)/200))


par(bg="black")
#Lets see the scatter plot of the distribution of mean of samples
plot(draw, xlab="N(10000) Draws", 
     ylab="Mean of n_th Draw", 
     cex=0.1, cex.main=2,
     xaxt="n", yaxt="n", pch=8, cex.lab=1.5,
     col="red", col.lab="white",
     main= "Scatter plot of mean of random samples of size 30",
     col.main="white")
abline(h= mean(draw), lwd=3, col="blue")
legend("topleft", legend = "Mean of distribution of mean",
       col="blue", lwd=4, text.col= "white")


par(bg="black")
x <- seq(-5, 5, length=1000)
y <- dnorm(x, mean=0, sd=1)

plot(x,y, col="white", lwd=7, xlab= " possible values of mean ",
     ylab= "Density / Frequency in proportion",
     main=" Distribution of Mean", type = "l", 
     cex.lab=1.4, font=9, cex.axis=1.3,
     xlim=c(-5,5), ylim=c(0, 0.4),
     col.lab="white",
     col.main="White", col.axis="white")
box(lwd=3, col="white")
par(new=T)

plot(density(z), col="red", lwd=4, xlab= " possible values of mean ",
     ylab= "Density / Frequency in proportion",
     main=" Distribution of Mean",
     cex.lab=1.4, font=9, cex.axis=1.3,
     xlim=c(-5,5), ylim=c(0, 0.4),
     col.lab="white",
     col.main="White", col.axis="white")

legend("topleft", 
       legend = c("Standard Normal Distribution", 
                  "Distribution of Xbar at n= 200"),
       col=c("white", "red"),
       lwd=3,
       text.col ="white")
abline(v=mean(density(z)$x) , lwd=2, col="red")
abline(v=0 , lwd=2, col="white")
box(lwd=3, col="white")




a<-
a$x
plot(draw, col="white")

par(bg="white")
plot(density(z), col="black")
