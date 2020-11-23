


x <- seq(-7, 7, length=1000)
z <- dnorm(x, mean=0, sd=1, log = F)

par(bg="black")

at<-c(2,5,10,15,20,30, 50,75,100,150,200)

for(i in 1:length(at)){
  plot(x,z, col="white", lwd=4, xlab= " possible values of mean ",
       ylab= "Density / Frequency in proportion",
       main=" Distribution of Mean", type = "l", 
       cex.lab=1.4, font=9, cex.axis=1.3,
       xlim=c(-7,7), ylim=c(0, 0.4),
       col.lab="white",
       col.main="White", col.axis="white")
  
  par(new=T)
  
  t<- dt(x, at[i], log = FALSE)
  plot(x,t, col="green", lwd=2, xlab= " possible values of mean ",
       ylab= "Density / Frequency in proportion",
       main=" Distribution of Mean", type = "l", 
       cex.lab=1.4, font=9, cex.axis=1.3,
       xlim=c(-7,7), ylim=c(0, 0.4),
       col.lab="white",
       col.main="White", col.axis="white")
  legend("topleft",
         legend = c("Z distibution",
                    "t distribution"),
         col=c("white","Green"),
         lwd=3, cex = 1.5,
         text.col = "white")
  box(lwd=3, col="white")
  
  text(4.5, 0.23, "Degree of Freedom",
       font=9, cex= 1.8,
       col="green")
  text(5, 0.2, 
       paste("v =",at[i]), col="green", 
       font = 9,
       cex=2.5)
}



