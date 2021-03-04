HJA=read.csv("AS01101.csv",header=TRUE)
names(HJA)
boxplot(HJA$TOTAL_LENGTH)
boxplot(TOTAL_LENGTH~STREAM, data=HJA)
boxplot(TOTAL_LENGTH~SITE, data=HJA)
HJA$TOTAL_LENGTHSQ=sqrt(HJA$TOTAL_LENGTH)
boxplot(TOTAL_LENGTHSQ)
boxplot(TOTAL_LENGTHSQ~STREAM, data=HJA)
boxplot(TOTAL_LENGTHSQ~SITE, data=HJA)

boxplot(TOTAL_LENGTH~STREAM+SPECIES, data=HJA)
HJA$fSTREAM= factor(HJA$STREAM)
HJA$fSITE=factor(HJA$SITE)
HJA$fYEAR = factor(HJA$YEAR)
HJA$fSPECIES=factor(HJA$SPECIES)

boxplot(HJA$TOTAL_LENGTH~fSTREAM+fSPECIES, data=HJA)
boxplot(HJA$TOTAL_LENGTH~fSPECIES, data=HJA)
boxplot(HJA$TOTAL_LENGTH~fSPECIES+fYEAR, data=HJA)
boxplot(HJA$TOTAL_LENGTH~fYEAR, data=HJA)

boxplot(TOTAL_LENGTHSQ~STREAM+SPECIES, data=HJA)
boxplot(HJA$TOTAL_LENGTHSQ~fSTREAM+fSPECIES, data=HJA)
boxplot(HJA$TOTAL_LENGTHSQ~fSPECIES, data=HJA)
boxplot(HJA$TOTAL_LENGTHSQ~fSPECIES+fYEAR, data=HJA)
boxplot(HJA$TOTAL_LENGTHSQ~fYEAR, data=HJA)

library(tidyverse)
library(ggplot2)
ggplot(HJA, aes(y=TOTAL_LENGTH,x=fSTREAM))+geom_boxplot()+facet_grid(~fYEAR)+theme_classic()
ggplot(HJA, aes(y=TOTAL_LENGTHSQ,x=fSTREAM))+geom_boxplot()+facet_grid(~fYEAR)+theme_classic()


boxplot(TOTAL_LENGTH~SAMPLING_METHOD, data=HJA)

hist(HJA$TOTAL_LENGTH)
hist(HJA$TOTAL_LENGTH[HJA$SPECIES=="CT"],main="CT", xlab="")
hist(HJA$TOTAL_LENGTH[HJA$SPECIES=="GS"],main="GS", xlab="") 
hist(HJA$TOTAL_LENGTH[HJA$SPECIES=="TR"],main="TR", xlab="") 
hist(HJA$TOTAL_LENGTH[HJA$SPECIES=="CT"],main="CT", xlab="") 
hist(HJA$TOTAL_LENGTH[HJA$SPECIES=="SC"],main="SC", xlab="") 
hist(HJA$TOTAL_LENGTH[HJA$SPECIES=="TF"],main="TF", xlab="") 
HJA$SPECIES


hist(HJA$TOTAL_LENGTH[HJA$STREAM=="McRae"],main="McRae", xlab="") 
hist(HJA$TOTAL_LENGTH[HJA$STREAM=="Lookout"],main="Lookout", xlab="") 

qqnorm(HJA$TOTAL_LENGTH)
qqline(HJA$TOTAL_LENGTH)

qqnorm(HJA$TOTAL_LENGTHSQ)
qqline(HJA$TOTAL_LENGTHSQ)


plot(HJA$WEIGHT, HJA$TOTAL_LENGTH, xlab="Weight", ylab ="TL")


model1=lm(TOTAL_LENGTH~WEIGHT,data=HJA)
abline(model1)

