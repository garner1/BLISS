f = read.table(file="table.bliss.csv", sep = ",", header = TRUE)
plot(f[,1],f[,2], main="reads vs experiments", xlab="experiment", ylab="reads")

plot(f[,2],f[,5], main="cuts vs reads", xlab="reads", ylab="cuts")
# legend("topleft", pch=c(1,4), col=c("red","blue","green","orange"), c("rm15","rm33","rm34","rm35"), cex=.8, box.col="darkgreen")

plot(f[,2],f[,6], main="DSB vs reads for gap=2000", xlab="reads", ylab="DSB")
