##========================================================================================================
#  Transient polymorphisms in parental care strategies 
#           drive divergence of sex roles
#
#     Xiaoyan Long1, 2 and Franz J. Weissing1*
#
##========================================================================================================
#   All of the figures in the manuscript and supplementary materials 
#   can be created with this R-script except for the life cycle (Figs.1 and S1)
#
#   Please remember to change the path which you used to store the simulation data
#
#   Written by:
#   Xiaoyan Long
#   Institute of Biology I
#   University of Freiburg
#   Freiburg im Breisgau 79104, 
#   Germany
#   
#   Date
#   03/07/2023

##========================================================================================================


########======Figure 2================
## Evolution of sex-biased parental roles in the absence of sexual selection

##======================================

rm(list=ls())
getwd()
library (shape)    ## used for drawing curve lines
library(dplyr)     ## used for reshaping data base
library(stringr)   ##using string in r

###########=============Figure 2b=======
##====== Tf=Tm=10============
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 2b/parameter_1/",
                         pattern = "parameter_1_Parental_Care_", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)  ##
##subset data, time<=5e6
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day <= 5000000), ]
}

##------------------------ Draw the box
par(pty="s")
plot(0,type="n",xlim=c(0,20),ylim=c(0,20), xlab="Female care", ylab="Male care")
abline (0,1, lty=3)
abline (v = 0, lty=3)
abline (h =0, lty = 3)
abline (a=20,b=-1,lty=3)

##------------------------ Trajectories
## The first line
lines(data[[1]]$femalePC,data[[1]]$malePC, col = '#8dd3c7',lwd=3.0)

## The second line
lines(data[[2]]$femalePC,data[[2]]$malePC, col = '#8dd3c7',lwd=3.0)


##====== Tf=Tm=20============
## read the data
# list all csv files from the current directory
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 2b/parameter_2/",
                         pattern = "parameter_2_Parental_Care_", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)  ##

##subset data, time<=5e6
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day <= 5000000), ]
}

##------------------------ Trajectories
## The first line
lines(data[[1]]$femalePC,data[[1]]$malePC, col = '#ffffb3',lwd=3.0)

## The second line
lines(data[[2]]$femalePC,data[[2]]$malePC, col = '#ffffb3',lwd=3.0)



##====== Tf=20 and Tm=10============
## read the data
# list all csv files from the current directory
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 2b/parameter_3/",
                         pattern = "parameter_3_Parental_Care_", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)  ##
##subset data, time<=5e6
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day <= 5000000), ]
}

##------------------------ Trajectories
lines(data[[1]]$femalePC,data[[1]]$malePC, col = '#CB3219',lwd=3.0)



##====== Tf=10 and Tm=20============
## read the data
# list all csv files from the current directory
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 2b/parameter_4/",
                         pattern = "parameter_4_Parental_Care_", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)  ##

##subset data, time<=5e6
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day <= 5000000), ]
}

##------------------------ Trajectories
lines(data[[1]]$femalePC,data[[1]]$malePC, col = '#CB3219',lwd=3)



##====== Tf=10 and Tm=0============
## read the data
# list all csv files from the current directory
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 2b/parameter_5/",
                         pattern = "parameter_5_Parental_Care_", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)  ##

##subset data, time<=5e6
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day <= 5000000), ]
}

##------------------------ Trajectories
lines(data[[1]]$femalePC,data[[1]]$malePC, col = '#9B4693',lwd=3)



##====== Tf=0 and Tm=10========
## read the data
# list all csv files from the current directory
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 2b/parameter_6/",
                         pattern = "parameter_6_Parental_Care_", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)  ##

##subset data, time<=5e6
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day <= 5000000), ]
}

##------------------------ Trajectories
lines(data[[1]]$femalePC,data[[1]]$malePC, col = '#9B4693',lwd=3)


##====== Tf=0 and Tm=5===============
## read the data
# list all csv files from the current directory
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 2b/parameter_7/",
                         pattern = "parameter_7_Parental_Care_", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)  ##

##subset data, time<=5e6
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day <= 5000000), ]
}

##------------------------ Trajectories
lines(data[[1]]$femalePC,data[[1]]$malePC, col = '#2F82bF',lwd=3)


##====== Tf=5 and Tm=0==============
## read the data
# list all csv files from the current directory
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 2b/parameter_8/",
                         pattern = "parameter_8_Parental_Care_", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)  ##

##subset data, time<=5e6
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day <= 5000000), ]
}


##------------------------ Trajectories
lines(data[[1]]$femalePC,data[[1]]$malePC, col = '#2F82bF',lwd=3)






##====== Tf=2 and Tm=2==============
## read the data
# list all csv files from the current directory
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 2b/parameter_9/",
                         pattern = "parameter_1_Parental_Care_", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)  ##

##subset data, time<=5e6
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day <= 5000000), ]
}


##------------------------ Trajectories

## The first line
lines(data[[1]]$femalePC,data[[1]]$malePC, col = '#E97211',lwd=3)
## The second line
lines(data[[2]]$femalePC,data[[2]]$malePC,  col = '#E97211',lwd=3)


###########=============Figure 2c====================
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 2c/",
                         pattern = "parameter_1_Parental_Care_2", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)

##subset data, time<=5e6
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day %% 5000==0), ]
}
par(mfrow = c(1,2))
par(pty = "s")
plot(0,type="n",xlim=c(0,5000000),ylim=c(0,20), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(0,5000000,1000000), labels=c("0","1000","2000","3000", "4000","5000"))
for (index in 1:1){
  lines(data[[index]] $day, data[[index]] $ malePC, col="#67a9cf", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ femalePC,col="#ef8961", lwd=2.5)
}



###########=============Figure 2d=======
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 2d/",
                         pattern = "parameter_1_Parental_Care_2", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)

##subset data
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day %% 5000==0), ]
}

plot(0,type="n",xlim=c(0,5000000),ylim=c(0,20), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(0,5000000,1000000), labels=c("0","1000","2000","3000", "4000","5000"))
for (index in 1:1){
  lines(data[[index]] $day, data[[index]] $ malePC, col="#67a9cf", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ femalePC,col="#ef8961", lwd=2.5)
}





###########=============Figure 3a-b===============
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 3a and b/",
                         pattern = "parameter_1_individual_2", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)

par(pty = "s")
par(mfrow=c(1,2))

## Female care
plot(0,type="n",xlim=c(0,5000000),ylim=c(0,25), xlab="Generation", ylab="Female care",xaxt = "n")
axis(1, at=seq(0,5000000,1000000), labels=c("0","1000","2000","3000", "4000","5000"))


for (index in 1:1){
  points(data[[index]] $day, data[[index]] $femalepc1, col="#ef8961", lwd=1.0,cex=0.5,pch=1)
}

## male care 
plot(0,type="n",xlim=c(0,5000000),ylim=c(0,25), xlab="Generation", ylab="Male care",xaxt = "n")
axis(1, at=seq(0,5000000,1000000), labels=c("0","1000","2000","3000", "4000","5000"))


for (index in 1:1){
  points(data[[index]] $day, data[[index]] $malepc2, col="#68A9CF", lwd=1.0,cex=0.5,pch=1)
}




###########=============Figure 3c=============
###=======Fitness========
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 3c/",
                         pattern = "fitness", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)

par(pty = "s")
par(mfrow=c(2,5))

## male:t=8e5 
plot(0,type="n",xlim=c(0,20),ylim=c(0,4), xlab="Male care", ylab="Fitness")

for (index in 1:1){
  points(data[[index]] $care, data[[index]]$maleW1, col="#68A9CF", lwd=1.0,cex=0.5,pch=19)
  lines(data[[index]] $care, data[[index]]$maleW1)
}


## male:t=9e5 
plot(0,type="n",xlim=c(0,20),ylim=c(0,4), xlab="Male care", ylab="Fitness")

for (index in 1:1){
  points(data[[index]] $care, data[[index]]$maleW2, col="#68A9CF", lwd=1.0,cex=0.5,pch=19)
  lines(data[[index]] $care, data[[index]]$maleW2)
}


## male:9.5e5
plot(0,type="n",xlim=c(0,20),ylim=c(0,4), xlab="Male care", ylab="Fitness")

for (index in 1:1){
  points(data[[index]] $care, data[[index]]$maleW3, col="#68A9CF", lwd=1.0,cex=0.5,pch=19)
  lines(data[[index]] $care, data[[index]]$maleW3)
}

## male:1.4e6
plot(0,type="n",xlim=c(0,20),ylim=c(0,4), xlab="Male care", ylab="Fitness")

for (index in 1:1){
  points(data[[index]] $care, data[[index]]$maleW6, col="#68A9CF", lwd=1.0,cex=0.5,pch=19)
  lines(data[[index]] $care, data[[index]]$maleW6)
}

## male:1.6e6
plot(0,type="n",xlim=c(0,20),ylim=c(0,4), xlab="Male care", ylab="Fitness")

for (index in 1:1){
  points(data[[index]] $care, data[[index]]$maleW7, col="#68A9CF", lwd=1.0,cex=0.5,pch=19)
  lines(data[[index]] $care, data[[index]]$maleW7)
}


## female:t=8e5 
plot(0,type="n",xlim=c(0,20),ylim=c(0,4), xlab="Female care", ylab="Fitness")

for (index in 1:1){
  points(data[[index]] $care, data[[index]]$femaleW1, col="#ef8961", lwd=1.0,cex=0.5,pch=19)
  lines(data[[index]] $care, data[[index]]$femaleW1)
}

## female:t=9e5 
plot(0,type="n",xlim=c(0,20),ylim=c(0,4), xlab="Female care", ylab="Fitness")

for (index in 1:1){
  points(data[[index]] $care, data[[index]]$femaleW2, col="#ef8961", lwd=1.0,cex=0.5,pch=19)
  lines(data[[index]] $care, data[[index]]$femaleW2)
}

## female:9.5e5
plot(0,type="n",xlim=c(0,20),ylim=c(0,4), xlab="Female care", ylab="Fitness")

for (index in 1:1){
  points(data[[index]] $care, data[[index]]$femaleW3, col="#ef8961", lwd=1.0,cex=0.5,pch=19)
  lines(data[[index]] $care, data[[index]]$femaleW3)
}

## female:1.4e6
plot(0,type="n",xlim=c(0,20),ylim=c(0,4), xlab="Female care", ylab="Fitness")

for (index in 1:1){
  points(data[[index]] $care, data[[index]]$femaleW6, col="#ef8961", lwd=1.0,cex=0.5,pch=19)
  lines(data[[index]] $care, data[[index]]$femaleW6)
}


## female:1.6e6
plot(0,type="n",xlim=c(0,20),ylim=c(0,4), xlab="Female care", ylab="Fitness")

for (index in 1:1){
  points(data[[index]] $care, data[[index]]$femaleW7, col="#ef8961", lwd=1.0,cex=0.5,pch=19)
  lines(data[[index]] $care, data[[index]]$femaleW7)
}
###=======historgram=====================
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 3c/",
                         pattern = "mateIndividual_2", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)

##subset 
femaledata <- data[[1]][ which(data[[1]]$individual== "matefemale" | data[[1]]$individual== "carefemale"), ]

maledata <-data[[1]][ which(data[[1]]$individual== "matemale"| data[[1]]$individual== "caremale"), ]

femd1 <- femaledata[ which(femaledata$day == 8e5 ), ]
femd5 <- femaledata[ which(femaledata$day == 9e5 ), ]
femd2 <- femaledata[ which(femaledata$day == 9.5e5 ), ]
femd3 <- femaledata[ which(femaledata$day == 1.4e6 ), ]
femd4 <- femaledata[ which(femaledata$day == 1.6e6 ), ]


maled1 <- maledata[ which(maledata$day == 8e5 ), ]
maled5 <- maledata[ which(maledata$day == 9e5 ), ]
maled2 <- maledata[ which(maledata$day == 9.5e5 ), ]
maled3 <- maledata[ which(maledata$day == 1.4e6 ), ]
maled4 <- maledata[ which(maledata$day == 1.6e6 ), ]


f1 <- ggplot() + geom_histogram(data =femd1,aes(x=pc1), binwidth=1,color="black", fill="#ef8961")+
  theme(aspect.ratio=1)+theme(panel.grid.major.x = element_blank(), panel.grid.major.y = element_blank(),
                              panel.grid.minor.x = element_blank(),panel.grid.minor.y = element_blank(),
                              legend.title = element_blank(),panel.background = element_rect(fill = "white", colour = "black",
                                                                                             size = 0.5, linetype = "solid"))+ 
  
  scale_y_continuous(limits = c(-1,801))+scale_x_continuous(limits = c(-1,21))
f1

f5 <- ggplot() + geom_histogram(data =femd5,aes(x=pc1), binwidth=1,color="black", fill="#ef8961")+
  theme(aspect.ratio=1)+theme(panel.grid.major.x = element_blank(), panel.grid.major.y = element_blank(),
                              panel.grid.minor.x = element_blank(),panel.grid.minor.y = element_blank(),
                              legend.title = element_blank(),panel.background = element_rect(fill = "white", colour = "black",
                                                                                             size = 0.5, linetype = "solid"))+ 
  
  scale_y_continuous(limits = c(-1,801))+scale_x_continuous(limits = c(-1,21))
f5

f2 <- ggplot() + geom_histogram(data =femd2,aes(x=pc1), binwidth=1,color="black", fill="#ef8961")+
  theme(aspect.ratio=1)+theme(panel.grid.major.x = element_blank(), panel.grid.major.y = element_blank(),
                              panel.grid.minor.x = element_blank(),panel.grid.minor.y = element_blank(),
                              legend.title = element_blank(),panel.background = element_rect(fill = "white", colour = "black",
                                                                                             size = 0.5, linetype = "solid"))+ 
  
  scale_y_continuous(limits = c(-1,801))+scale_x_continuous(limits = c(-1,21))
f2

f3 <- ggplot() + geom_histogram(data =femd3,aes(x=pc1), binwidth=1,color="black", fill="#ef8961")+
  theme(aspect.ratio=1)+theme(panel.grid.major.x = element_blank(), panel.grid.major.y = element_blank(),
                              panel.grid.minor.x = element_blank(),panel.grid.minor.y = element_blank(),
                              legend.title = element_blank(),panel.background = element_rect(fill = "white", colour = "black",
                                                                                             size = 0.5, linetype = "solid"))+ 
  
  scale_y_continuous(limits = c(-1,801))+scale_x_continuous(limits = c(-1,21))
f3

f4 <- ggplot() + geom_histogram(data =femd4,aes(x=pc1), binwidth=1,color="black", fill="#ef8961")+
  theme(aspect.ratio=1)+theme(panel.grid.major.x = element_blank(), panel.grid.major.y = element_blank(),
                              panel.grid.minor.x = element_blank(),panel.grid.minor.y = element_blank(),
                              legend.title = element_blank(),panel.background = element_rect(fill = "white", colour = "black",
                                                                                             size = 0.5, linetype = "solid"))+ 
  
  scale_y_continuous(limits = c(-1,801))+scale_x_continuous(limits = c(-1,21))
f4

library (gridExtra)
grid.arrange(f1,f2,f3,f4, nrow = 1, ncol =4)

m1 <- ggplot() + geom_histogram(data =maled1,aes(x=pc2), binwidth=1,color="black", fill="#68A9CF")+
  theme(aspect.ratio=1)+theme(panel.grid.major.x = element_blank(), panel.grid.major.y = element_blank(),
                              panel.grid.minor.x = element_blank(),panel.grid.minor.y = element_blank(),
                              legend.title = element_blank(),panel.background = element_rect(fill = "white", colour = "black",
                                                                                             size = 0.5, linetype = "solid"))+ 
  
  scale_y_continuous(limits = c(-1,801))+scale_x_continuous(limits = c(-1,21))
m1

m5 <- ggplot() + geom_histogram(data =maled5,aes(x=pc2), binwidth=1,color="black", fill="#68A9CF")+
  theme(aspect.ratio=1)+theme(panel.grid.major.x = element_blank(), panel.grid.major.y = element_blank(),
                              panel.grid.minor.x = element_blank(),panel.grid.minor.y = element_blank(),
                              legend.title = element_blank(),panel.background = element_rect(fill = "white", colour = "black",
                                                                                             size = 0.5, linetype = "solid"))+ 
  
  scale_y_continuous(limits = c(-1,801))+scale_x_continuous(limits = c(-1,21))
m5

m2 <- ggplot() + geom_histogram(data =maled2,aes(x=pc2), binwidth=1,color="black", fill="#68A9CF")+
  theme(aspect.ratio=1)+theme(panel.grid.major.x = element_blank(), panel.grid.major.y = element_blank(),
                              panel.grid.minor.x = element_blank(),panel.grid.minor.y = element_blank(),
                              legend.title = element_blank(),panel.background = element_rect(fill = "white", colour = "black",
                                                                                             size = 0.5, linetype = "solid"))+ 
  
  scale_y_continuous(limits = c(-1,801))+scale_x_continuous(limits = c(-1,21))
m2

m3 <- ggplot() + geom_histogram(data =maled3,aes(x=pc2), binwidth=1,color="black", fill="#68A9CF")+
  theme(aspect.ratio=1)+theme(panel.grid.major.x = element_blank(), panel.grid.major.y = element_blank(),
                              panel.grid.minor.x = element_blank(),panel.grid.minor.y = element_blank(),
                              legend.title = element_blank(),panel.background = element_rect(fill = "white", colour = "black",
                                                                                             size = 0.5, linetype = "solid"))+ 
  
  scale_y_continuous(limits = c(-1,801))+scale_x_continuous(limits = c(-1,21))
m3

m4 <- ggplot() + geom_histogram(data =maled4,aes(x=pc2), binwidth=1,color="black", fill="#68A9CF")+
  theme(aspect.ratio=1)+theme(panel.grid.major.x = element_blank(), panel.grid.major.y = element_blank(),
                              panel.grid.minor.x = element_blank(),panel.grid.minor.y = element_blank(),
                              legend.title = element_blank(),panel.background = element_rect(fill = "white", colour = "black",
                                                                                             size = 0.5, linetype = "solid"))+ 
  
  scale_y_continuous(limits = c(-1,801))+scale_x_continuous(limits = c(-1,21))
m4

library (gridExtra)
grid.arrange(f1,f5,f2,f3,f4,m1,m5,m2,m3,m4, nrow = 2, ncol =5)


###########=============Figure 4=====================
###########=============Figure 4b=============

files_to_read = list.files(
  path = "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 4/Figure 4b/param0/",        # directory to search within
  pattern = "all_", # regex pattern, some explanation below
  recursive = TRUE,          # search subdirectories
  full.names = TRUE          # return the full path
)
library(gtools)
files_to_read <- mixedsort(files_to_read)
data = lapply(files_to_read, read.csv)  # read all the matching files

##------------------------ Draw the box
par(pty="s")
plot(0,type="n",xlim=c(0,20),ylim=c(0,20), xlab="Female care", ylab="Male care")
abline (0,1, lty=3)
abline (v = 0, lty=3)
abline (h =0, lty = 3)
abline (a=20,b=-1,lty=3)


##------------------------ Trajectories

## The first line
lines(data[[1]]$femalePC,data[[1]]$malePC, col = '#E97211',lwd=3)
## The second line
lines(data[[2]]$femalePC,data[[2]]$malePC,  col = '#E97211',lwd=3)



files_to_read = list.files(
  path = "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 4/Figure 4b/param2/",        # directory to search within
  pattern = "all_", # regex pattern, some explanation below
  recursive = TRUE,          # search subdirectories
  full.names = TRUE          # return the full path
)
library(gtools)
files_to_read <- mixedsort(files_to_read)
data = lapply(files_to_read, read.csv)  # read all the matching files

##------------------------ Trajectories

## The first line
lines(data[[1]]$femalePC,data[[1]]$malePC, col = '#ffffb3',lwd=3)
## The second line
lines(data[[2]]$femalePC,data[[2]]$malePC,  col = '#ffffb3',lwd=3)






files_to_read = list.files(
  path = "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 4/Figure 4b/param3/",        # directory to search within
  pattern = "all_", # regex pattern, some explanation below
  recursive = TRUE,          # search subdirectories
  full.names = TRUE          # return the full path
)
library(gtools)
files_to_read <- mixedsort(files_to_read)
data = lapply(files_to_read, read.csv)  # read all the matching files

##------------------------ Trajectories

## The first line
lines(data[[1]]$femalePC,data[[1]]$malePC, col = '#8dd3c7',lwd=3)




files_to_read = list.files(
  path = "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 4/Figure 4b/param4/",        # directory to search within
  pattern = "all_", # regex pattern, some explanation below
  recursive = TRUE,          # search subdirectories
  full.names = TRUE          # return the full path
)
library(gtools)
files_to_read <- mixedsort(files_to_read)
data = lapply(files_to_read, read.csv)  # read all the matching files

##------------------------ Trajectories

## The first line
lines(data[[1]]$femalePC,data[[1]]$malePC, col = '#CB3219',lwd=3)






files_to_read = list.files(
  path = "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 4/Figure 4b/param5/",        # directory to search within
  pattern = "all_", # regex pattern, some explanation below
  recursive = TRUE,          # search subdirectories
  full.names = TRUE          # return the full path
)
library(gtools)
files_to_read <- mixedsort(files_to_read)
data = lapply(files_to_read, read.csv)  # read all the matching files

##------------------------ Trajectories

## The first line
lines(data[[1]]$femalePC,data[[1]]$malePC, col = '#2F82bF',lwd=3)






files_to_read = list.files(
  path = "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 4/Figure 4b/param6/",        # directory to search within
  pattern = "all_", # regex pattern, some explanation below
  recursive = TRUE,          # search subdirectories
  full.names = TRUE          # return the full path
)
library(gtools)
files_to_read <- mixedsort(files_to_read)
data = lapply(files_to_read, read.csv)  # read all the matching files

##------------------------ Trajectories

## The first line
lines(data[[1]]$femalePC,data[[1]]$malePC, col = '#2F82bF',lwd=3)





files_to_read = list.files(
  path = "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 4/Figure 4b/param7/",        # directory to search within
  pattern = "all_", # regex pattern, some explanation below
  recursive = TRUE,          # search subdirectories
  full.names = TRUE          # return the full path
)
library(gtools)
files_to_read <- mixedsort(files_to_read)
data = lapply(files_to_read, read.csv)  # read all the matching files

##------------------------ Trajectories

## The first line
lines(data[[1]]$femalePC,data[[1]]$malePC, col = '#9B4693',lwd=3)





files_to_read = list.files(
  path = "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 4/Figure 4b/param8/",        # directory to search within
  pattern = "all_", # regex pattern, some explanation below
  recursive = TRUE,          # search subdirectories
  full.names = TRUE          # return the full path
)
library(gtools)
files_to_read <- mixedsort(files_to_read)
data = lapply(files_to_read, read.csv)  # read all the matching files

##------------------------ Trajectories

## The first line
lines(data[[1]]$femalePC,data[[1]]$malePC, col = '#9B4693',lwd=3)



###########=============Figure 4c-e=====================
rm(list=ls())
getwd()
#####=========Small synergistic effect======

datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 4/1_syn_0.05/",
                         pattern = "1parameter_1_Parental_", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)



####====Average============
plot(0,type="n",xlim=c(0,10000000),ylim=c(0,25), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(0,10000000,2000000), labels=c("0","2000","4000","6000", "8000","10000"))
for (index in 1:1){
  lines(data[[index]] $day, data[[index]] $ malePC, col="#67a9cf", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ femalePC,col="#ef8961", lwd=2.5)
}


#####=========Female care=======
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 4/1_syn_0.05/",
                         pattern = "1parameter_1_individual_", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)

par(pty = "s")
plot(0,type="n",xlim=c(0,10000000),ylim=c(0,25), xlab="Generation", ylab="Female care",xaxt = "n")
axis(1, at=seq(0,10000000,2000000), labels=c("0","2000","4000","6000", "8000","10000"))
for (index in 5:5){
  #points(data[[index]] $day, data[[index]] $malepc2, col="#68A9CF", lwd=1.0,cex=0.5,pch=1)
  points(data[[index]] $day, data[[index]] $femalepc1, col="#ef8961", lwd=1.0,cex=0.5,pch=1)
}
#####=========Male care=======
plot(0,type="n",xlim=c(0,10000000),ylim=c(0,25), xlab="Generation", ylab="Male care",xaxt = "n")
axis(1, at=seq(0,10000000,2000000), labels=c("0","2000","4000","6000", "8000","10000"))
for (index in 5:5){
  points(data[[index]] $day, data[[index]] $malepc2, col="#68A9CF", lwd=1.0,cex=0.5,pch=1)
  #points(data[[index]] $day, data[[index]] $femalepc1, col="#ef8961", lwd=1.0,cex=0.5,pch=1)
}



#####==========Figure 5============
####Fig5_a
rm(list=ls())
getwd()
library (shape)    ## used for drawing curve lines
library(dplyr)     ## used for reshaping data base
par(mfrow = c(1,1))
par(pty = "m")

datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 5/1_ (2)/",
                         pattern = "parameter_2_Parental_Care_2", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)

for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day %% 80000 == 0), ]
}

par(pty = "m")
plot(0,type="n",xlim=c(0,4e8),ylim=c(0,25), xlab="Simulation time (× 1000000 days)", ylab="Parental care",xaxt = "n")
axis(1, at=seq(0,4e8,1e8), labels=c("0","100000","200000","300000", "400000"))
for (index in 1:1){
  lines(data[[index]] $day, data[[index]] $ malePC, col="#67a9cf", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ femalePC,col="#ef8961", lwd=2.5)
}

####Fig5_b
par(pty="s")
plot(0,type="n",xlim=c(0,20),ylim=c(0,20), xlab="Female care", ylab="Male care")
abline (0,1, lty=3)
abline (v = 0, lty=3)
abline (h =0, lty = 3)
abline (a=20,b=-1,lty=3)

##------------------------ plot the figures
## The first line
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day <=4e8), ]
}
lines(data[[1]]$malePC,data[[1]]$femalePC, col = '#ffffb3',lwd=3.0)






###====================Figure 6===================
###====================Fig_6b======================
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 6/Figure 6b/",
                         pattern = "parameter_7_Parental_Care_1", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)  ##

##subset data
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day <= 8e7), ]
}

for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day %% 8e4==0), ]
}
## function to plot lines:long
par(mfrow = c(1,1))
par(pty = "m")
plot(0,type="n",xlim=c(0,8e7),ylim=c(0,25), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(0,8e7,2e7), labels=c("0","20000","40000","60000", "80000"))
for (index in 1:1){
  lines(data[[index]] $day, data[[index]] $ malePC, col="#71ABD3", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ femalePC,col="#ED875B", lwd=2.5)
}

##=============Selection

plot(0,type="n",xlim=c(0,8e7),ylim=c(0,4), xlab="Generation", ylab=" ",xaxt = "n")
axis(1, at=seq(0,8e7,2e7), labels=c("0","20000","40000","60000", "80000"))

for (index in 1:1){
  lines(data[[index]] $day, data[[index]] $preference, col="#F2B600", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ornaments,col="#95C9A9", lwd=2.5)
}






###====================Fig_6c======================
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 6/Figure 6c/",
                         pattern = "parameter_6_Parental_Care_1", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)  ##

##subset data
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day <= 8e7), ]
}

for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day %% 8e4==0), ]
}
## function to plot lines:long
par(mfrow = c(1,1))
par(pty = "m")
plot(0,type="n",xlim=c(0,8e7),ylim=c(0,25), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(0,8e7,2e7), labels=c("0","20000","40000","60000", "80000"))
for (index in 1:1){
  lines(data[[index]] $day, data[[index]] $ malePC, col="#71ABD3", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ femalePC,col="#ED875B", lwd=2.5)
}

##=============Selection

plot(0,type="n",xlim=c(0,8e7),ylim=c(0,4), xlab="Generation", ylab=" ",xaxt = "n")
axis(1, at=seq(0,8e7,2e7), labels=c("0","20000","40000","60000", "80000"))

for (index in 1:1){
  lines(data[[index]] $day, data[[index]] $preference, col="#F2B600", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ornaments,col="#95C9A9", lwd=2.5)
}


###====================Figure 7===================
####=======Logistic regression
rm(list=ls())
getwd()
setwd("D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 7/Orgnised data/")
getwd()
# mydata1 <- read.csv("anisogamy_high_recovery_cost.csv")
# str(mydata1)
# mydata2 <- read.csv("anisogamy_no_recovery_cost.csv")
# str(mydata2)
# mydata3 <- read.csv("anisogamy_same recovery cost as mating.csv")
mydata <- read.csv("pre-mating_Tf20_Tm20.csv")
str(mydata)

# df1 <- data.frame(mydata1)
# df2 <- data.frame(mydata2)
# df3 <- data.frame(mydata3)
df <- data.frame(mydata)


library(ggplot2)
ggplot(df, aes(pre, u0.002)) + 
  geom_point(data=df,aes(pre, u0.002),size = 2,color="#808080") + geom_smooth(method = "glm",
                                                                              formula = y~x+I(x^2)+I(x^3)+I(x^4)+I(x^5)+I(x^6)+I(x^7),
                                                                              method.args = list(family = binomial(link = "logit")),
                                                                              se = FALSE,colour = "#808080") +
  
  geom_point(data = df, aes(pre, u0.000),size =2,color = "white")+geom_smooth(data=df,aes(pre, u0.000),method = "glm",
                                                                              formula = y~x+I(x^2),
                                                                              method.args = list(family = binomial(link = "logit")), 
                                                                              se = FALSE,colour = "white") +
  geom_point(data = df, aes(pre, u0.001),size =2,color = "#A9A9A9")+geom_smooth(data=df,aes(pre, u0.001),method = "glm",
                                                                                formula = y~x+I(x^2)+I(x^3), 
                                                                                method.args = list(family = binomial(link = "logit")),
                                                                                se = FALSE,colour = "#A9A9A9") +
  geom_point(data = df, aes(pre, u0.005),size =2,color = "black")+geom_smooth(data=df,aes(pre, u0.005),method = "glm",
                                                                              formula = y~x+I(x^2), 
                                                                              method.args = list(family = binomial(link = "logit")),
                                                                              se = FALSE,colour = "black") +
  
  labs(x = "Difference in recovery phase",
       y = "VALUES") +
  theme(panel.grid.major.x = element_blank(), panel.grid.major.y = element_blank(),
        panel.grid.minor.x = element_blank(),panel.grid.minor.y = element_blank(),
        legend.title = element_blank(),panel.background = element_rect(colour = "black",
                                                                       size = 0.5, linetype = "solid"))+
  geom_hline(yintercept=0.5, linetype="dashed")+
  scale_x_continuous(breaks = scales::pretty_breaks(n = 10))+
  geom_rect(fill = "#ED875B", xmin = -Inf, xmax = Inf, ymin =0.5, ymax = Inf, alpha =0.05)+
  geom_rect(fill = "#71ABD3", xmin = -Inf, xmax = Inf, ymin =-Inf, ymax = 0.5, alpha =0.05)+
  geom_point(data=df,aes(pre, u0.002),size = 3,color="#808080") + geom_smooth(method = "glm",
                                                                              formula = y~x+I(x^2)+I(x^3)+I(x^4)+I(x^5)+I(x^6)+I(x^7),
                                                                              method.args = list(family = binomial(link = "logit")),
                                                                              se = FALSE,colour = "#808080") +
  
  geom_point(data = df, aes(pre, u0.000),size =3,color = "white")+geom_smooth(data=df,aes(pre, u0.000),method = "glm",
                                                                              formula = y~x+I(x^2),
                                                                              method.args = list(family = binomial(link = "logit")), 
                                                                              se = FALSE,colour = "white") +
  geom_point(data = df, aes(pre, u0.001),size =3,color = "#A9A9A9")+geom_smooth(data=df,aes(pre, u0.001),method = "glm",
                                                                                formula = y~x+I(x^2)+I(x^3), 
                                                                                method.args = list(family = binomial(link = "logit")),
                                                                                se = FALSE,colour = "#A9A9A9") +
  geom_point(data = df, aes(pre, u0.005),size =3,color = "black")+geom_smooth(data=df,aes(pre, u0.005),method = "glm",
                                                                              formula = y~x+I(x^2),
                                                                              method.args = list(family = binomial(link = "logit")),
                                                                              se = FALSE,colour = "black")











#####=========Supplementary Fig S3==================

files_to_read = list.files(
  path = "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure S3/2023-06-26_fig.2_diffIni/",        # directory to search within
  pattern = "all_", # regex pattern, some explanation below
  recursive = TRUE,          # search subdirectories
  full.names = TRUE          # return the full path
)
library(gtools)
files_to_read <- mixedsort(files_to_read)
data = lapply(files_to_read, read.csv)  # read all the matching files



files_to_read = list.files(
  path = "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure S3/2023-06-26_fig.2_diffIni/",        # directory to search within
  pattern = "offspring", # regex pattern, some explanation below
  recursive = TRUE,          # search subdirectories
  full.names = TRUE          # return the full path
)
library(gtools)
files_to_read <- mixedsort(files_to_read)
offdata = lapply(files_to_read, read.csv)  # read all the matching files


####====1e7
data1<- data
for (i in 1: length(data)){
  data1[[i]] <-data[[i]][ which(data[[i]]$day <=5e6), ]
}


offdata1<- offdata
for (i in 1: length(data)){
  offdata1[[i]] <-offdata[[i]][ which(offdata[[i]]$day <=5e6), ]
}

pdf(file="C:/Users/User/Documents/1_PhD project/2_PI_random mating/5_Figures/2023-06-26_fig.2_fem5_male0_v2.pdf",width=8, height=5)
#dev.new(width = 550, height = 430, unit = "px",noRStudioGD = TRUE) ## change size of the plot window

par(pty = "s")
par(mar = c(2, 5,2, 2))
par(mfrow=c(2,3))

for (index in 12:12){
  plot(0,type="n",xlim=c(0,5e6),ylim=c(0,25), xlab="Generation", ylab="Parental care",xaxt = "n")
  axis(1, at=seq(0,5e6,5e6), labels=c("0","5000"))
  lines(data1[[index]] $day, data1[[index]] $ femalePC,col="#ef8961", lwd=2.5)
  lines(data1[[index]] $day, data1[[index]] $ malePC, col="#67a9cf", lwd=2.5)
  
  
  plot(0,type="n",xlim=c(0,5e6),ylim=c(0,25), xlab="Generation", ylab="Female care",xaxt = "n")
  axis(1, at=seq(0,5e6,5e6), labels=c("0","5000"))
  points(offdata1[[index]] $day,offdata1[[index]] $ femalepc1,col="#ef8961", lwd=1.0,cex=0.5,pch=19)
  
  plot(0,type="n",xlim=c(0,5e6),ylim=c(0,25), xlab="Generation", ylab="Male care",xaxt = "n")
  axis(1, at=seq(0,5e6,5e6), labels=c("0","5000"))
  points(offdata1[[index]] $day, offdata1[[index]] $malepc2, col="#67a9cf", lwd=1.0,cex=0.5,pch=19)
  
}




for (index in 15:15){
  plot(0,type="n",xlim=c(0,5e6),ylim=c(0,25), xlab="Generation", ylab="Parental care",xaxt = "n")
  axis(1, at=seq(0,5e6,5e6), labels=c("0","5000"))
  lines(data1[[index]] $day, data1[[index]] $ femalePC,col="#ef8961", lwd=2.5)
  lines(data1[[index]] $day, data1[[index]] $ malePC, col="#67a9cf", lwd=2.5)
  

  plot(0,type="n",xlim=c(0,5e6),ylim=c(0,25), xlab="Generation", ylab="Female care",xaxt = "n")
  axis(1, at=seq(0,5e6,5e6), labels=c("0","5000"))
  points(offdata1[[index]] $day,offdata1[[index]] $ femalepc1,col="#ef8961", lwd=1.0,cex=0.5,pch=19)
  
  plot(0,type="n",xlim=c(0,5e6),ylim=c(0,25), xlab="Generation", ylab="Male care",xaxt = "n")
  axis(1, at=seq(0,5e6,5e6), labels=c("0","5000"))
  points(offdata1[[index]] $day, offdata1[[index]] $malepc2, col="#67a9cf", lwd=1.0,cex=0.5,pch=19)
  
}


dev.off()


#####=========Supplementary Fig S4===================
#####=========Intermediate synergy (Fig. S4a)========
####===Average
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 4/2_syn_0.2/",
                         pattern = "1parameter_1_Parental_", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)

##subset data
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day <= 1e6), ]
}

par(pty = "s")
plot(0,type="n",xlim=c(0,1000000),ylim=c(0,25), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(0,1000000,200000), labels=c("0","200","400","600", "800","1000"))
for (index in 1:1){
  lines(data[[index]] $day, data[[index]] $ malePC, col="#67a9cf", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ femalePC,col="#ef8961", lwd=2.5)
}

####Individual data
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 4/2_syn_0.2/",
                         pattern = "1parameter_1_individual_", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)

##subset data
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day <= 1e6), ]
}

####=====Female care
plot(0,type="n",xlim=c(0,1000000),ylim=c(0,25), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(0,1000000,200000), labels=c("0","200","400","600", "800","1000"))
for (index in 1:1){
  #points(data[[index]] $day, data[[index]] $malepc2, col="#68A9CF", lwd=1.0,cex=0.5,pch=1)
  points(data[[index]] $day, data[[index]] $femalepc1, col="#ef8961", lwd=1.0,cex=0.5,pch=1)
}


####=====Male care
plot(0,type="n",xlim=c(0,1000000),ylim=c(0,25), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(0,1000000,200000), labels=c("0","200","400","600", "800","1000"))
for (index in 1:1){
  points(data[[index]] $day, data[[index]] $malepc2, col="#68A9CF", lwd=1.0,cex=0.5,pch=1)
  #points(data[[index]] $day, data[[index]] $femalepc1, col="#ef8961", lwd=1.0,cex=0.5,pch=1)
}



#####=========Large synergy (Fig. S4b)========
####===Average
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 4/3_syn_2.0/",
                         pattern = "1parameter_2_Parental_", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)

par(pty = "s")
plot(0,type="n",xlim=c(0,1000000),ylim=c(0,25), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(0,1000000,200000), labels=c("0","200","400","600", "800","1000"))
for (index in 1:1){
  lines(data[[index]] $day, data[[index]] $ malePC, col="#67a9cf", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ femalePC,col="#ef8961", lwd=2.5)
}

####Individual data
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 4/3_syn_2.0/",
                         pattern = "1parameter_1_individual_", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)

par(pty = "s")

####=====Female care
plot(0,type="n",xlim=c(0,1000000),ylim=c(0,25), xlab="Generation", ylab="Female care",xaxt = "n")
axis(1, at=seq(0,1000000,200000), labels=c("0","200","400","600", "800","1000"))
for (index in 1:1){
  #points(data[[index]] $day, data[[index]] $malepc2, col="#68A9CF", lwd=1.0,cex=0.5,pch=1)
  points(data[[index]] $day, data[[index]] $femalepc1, col="#ef8961", lwd=1.0,cex=0.5,pch=1)
}


####=====Male care
plot(0,type="n",xlim=c(0,1000000),ylim=c(0,25), xlab="Generation", ylab="Male care",xaxt = "n")
axis(1, at=seq(0,1000000,200000), labels=c("0","200","400","600", "800","1000"))
for (index in 1:1){
  points(data[[index]] $day, data[[index]] $malepc2, col="#68A9CF", lwd=1.0,cex=0.5,pch=1)
  #points(data[[index]] $day, data[[index]] $femalepc1, col="#ef8961", lwd=1.0,cex=0.5,pch=1)
}

#####=========Supplementary Fig S5=======================

####=====Figure S5_a
rm(list=ls())
getwd()
library (shape)  ## used for drawing curve lines
library(dplyr)     ## used for reshaping data base
library(stringr) ##using string in r
par(mfrow = c(1,1))
par(pty = "m")

###read data in different pathes
files_to_read = list.files(
  path = "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure S5/S5a/",       # directory to search within
  pattern = "all_", # regex pattern, some explanation below
  recursive = TRUE,          # search subdirectories
  full.names = TRUE          # return the full path
)


##reorder the path according to normal order
library(gtools)
files_to_read <- mixedsort(files_to_read)
data = lapply(files_to_read, read.csv)  # read all the matching files

pop <- data[[1]][ which(data[[1]]$day > 1e8), ]
summary (pop$pop_size)
##subset data


for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day %% 1e5==0), ]
}

plot(0,type="n",xlim=c(0,5e8),ylim=c(0,25), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(0,5e8,1e8), labels=c("0","100000","200000","300000", "400000","500000"))
mtext("(a) Population size = 4000", side=3)
for (index in 1:1){
  lines(data[[index]] $day, data[[index]] $ malePC, col="#67a9cf", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ femalePC,col="#ef8961", lwd=2.5)
}
#####=======Fig S5_b
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure S5/S5b/",
                         pattern = "1parameter_3_Parental_Care_", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)

pop <- data[[1]][ which(data[[1]]$day > 1e8), ]
summary (pop$popSize)
##subset data
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day %% 20000==0), ]
}
par(pty = "m")
plot(0,type="n",xlim=c(0,5e8),ylim=c(0,25), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(0,5e8,1e8), labels=c("0","1e8","2e8","3e8", "4e8","5e8"))
mtext("(b) Population size = 1300", side=3)
for (index in 1:1){
  lines(data[[index]] $day, data[[index]] $ malePC, col="#67a9cf", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ femalePC,col="#ef8961", lwd=2.5)
}


#####=======Fig S5_c
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure S5/S5c/",
                         pattern = "parameter_2_Parental_Care_", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)

pop <- data[[1]][ which(data[[1]]$day > 1e8), ]
summary (pop$popSize)

##subset data
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day %% 20000==0), ]
}
par(pty = "m")
plot(0,type="n",xlim=c(0,5e8),ylim=c(0,25), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(0,5e8,1e8), labels=c("0","1e8","2e8","3e8", "4e8","5e8"))
mtext("(c) Population size = 600", side=3)
for (index in 1:1){
  lines(data[[index]] $day, data[[index]] $ malePC, col="#67a9cf", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ femalePC,col="#ef8961", lwd=2.5)
}


#####=========Supplementary Fig S6=======================

####=====Figure S6_a
rm(list=ls())
getwd()
library (shape)  ## used for drawing curve lines
library(dplyr)     ## used for reshaping data base
library(stringr) ##using string in r
par(mfrow = c(1,1))
par(pty = "m")

###read data in different pathes
files_to_read = list.files(
  path = "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure S6/care0.001/",       # directory to search within
  pattern = "all_", # regex pattern, some explanation below
  recursive = TRUE,          # search subdirectories
  full.names = TRUE          # return the full path
)


##reorder the path according to normal order
library(gtools)
files_to_read <- mixedsort(files_to_read)
data = lapply(files_to_read, read.csv)  # read all the matching files

pop <- data[[1]][ which(data[[1]]$day > 1e8), ]
summary (pop$pop_size)
##subset data
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day %% 1e5==0), ]
}

plot(0,type="n",xlim=c(0,5e8),ylim=c(0,25), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(0,5e8,1e8), labels=c("0","100000","200000","300000", "400000","500000"))
for (index in 1:1){
  lines(data[[index]] $day, data[[index]] $ malePC, col="#67a9cf", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ femalePC,col="#ef8961", lwd=2.5)
}
#####=======Fig S6_b
files_to_read = list.files(
  path = "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure S6/care0.002/",       # directory to search within
  pattern = "all_", # regex pattern, some explanation below
  recursive = TRUE,          # search subdirectories
  full.names = TRUE          # return the full path
)


##reorder the path according to normal order
library(gtools)
files_to_read <- mixedsort(files_to_read)
data = lapply(files_to_read, read.csv)  # read all the matching files

pop <- data[[1]][ which(data[[1]]$day > 1e8), ]
summary (pop$popSize)
##subset data
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day %% 20000==0), ]
}
par(pty = "m")
plot(0,type="n",xlim=c(0,5e8),ylim=c(0,25), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(0,5e8,1e8), labels=c("0","1e8","2e8","3e8", "4e8","5e8"))
for (index in 1:1){
  lines(data[[index]] $day, data[[index]] $ malePC, col="#67a9cf", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ femalePC,col="#ef8961", lwd=2.5)
}


#####=======Fig S6_c
files_to_read = list.files(
  path = "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure S6/care0.003/",       # directory to search within
  pattern = "all_", # regex pattern, some explanation below
  recursive = TRUE,          # search subdirectories
  full.names = TRUE          # return the full path
)


##reorder the path according to normal order
library(gtools)
files_to_read <- mixedsort(files_to_read)
data = lapply(files_to_read, read.csv)  # read all the matching files


##subset data
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day %% 20000==0), ]
}
par(pty = "m")
plot(0,type="n",xlim=c(0,5e8),ylim=c(0,25), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(0,5e8,1e8), labels=c("0","1e8","2e8","3e8", "4e8","5e8"))
for (index in 1:1){
  lines(data[[index]] $day, data[[index]] $ malePC, col="#67a9cf", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ femalePC,col="#ef8961", lwd=2.5)
}




#####=======Fig S6_d
files_to_read = list.files(
  path = "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure S6/care0.004/",       # directory to search within
  pattern = "all_", # regex pattern, some explanation below
  recursive = TRUE,          # search subdirectories
  full.names = TRUE          # return the full path
)


##reorder the path according to normal order
library(gtools)
files_to_read <- mixedsort(files_to_read)
data = lapply(files_to_read, read.csv)  # read all the matching files


##subset data
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day %% 20000==0), ]
}
par(pty = "m")
plot(0,type="n",xlim=c(0,5e8),ylim=c(0,25), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(0,5e8,1e8), labels=c("0","1e8","2e8","3e8", "4e8","5e8"))
for (index in 1:1){
  lines(data[[index]] $day, data[[index]] $ malePC, col="#67a9cf", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ femalePC,col="#ef8961", lwd=2.5)
}



#####=========Supplementary Fig S7===============

files_to_read = list.files(
  path = "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure S7/",        # directory to search within
  pattern = "all_", # regex pattern, some explanation below 
  recursive = TRUE,          # search subdirectories
  full.names = TRUE          # return the full path
)
library(gtools)
files_to_read <- mixedsort(files_to_read)
data = lapply(files_to_read, read.csv)  # read all the matching files
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day <= 4e8), ]
}

for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day %% 4e4 == 0), ]
}

files_to_read = list.files(
  path = "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure S7/",        # directory to search within
  pattern = "offspring", # regex pattern, some explanation below
  recursive = TRUE,          # search subdirectories
  full.names = TRUE          # return the full path
)

offdata = lapply(files_to_read, read.csv)  # read all the matching files
for (i in 1: length(offdata)){
  offdata[[i]] <-offdata[[i]][ which(offdata[[i]]$day <= 4e8), ]
}



pdf(file="D:/1_PhD project/2_PI_random mating/5_Figures/Fig.S7.pdf",width=15, height=10)
#dev.new(width = 550, height = 430, unit = "px",noRStudioGD = TRUE) ## change size of the plot window

layout(matrix(c(1,1,2,3,4,5
), nrow=3,byrow=TRUE))
#layout.show(n=5)
par(mar = c(3,3,3,3))

par(pty = "m")
plot(0,type="n",xlim=c(0,400000000),ylim=c(0,25), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(0,400000000,100000000), labels=c("0","100000","200000","300000", "400000"))
for (index in 1:1){
  lines(data[[index]] $day, data[[index]] $ malePC, col="#67a9cf", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ femalePC,col="#ef8961", lwd=2.5)
}


par(pty = "s")
##subset data
offdata1 <-offdata[[1]][ which(offdata[[1]]$day <2.23e8&offdata[[1]]$day >=2.18e8), ]
data1 <-data[[1]][ which(data[[1]]$day <2.23e8&data[[1]]$day >=2.18e8), ]
plot(0,type="n",xlim=c(2.18e8,2.23e8),ylim=c(0,25), xlab="Generation", ylab="Female care",xaxt = "n")
axis(1, at=seq(218000000,223000000,5000000), labels=c("218000","2230000"))
points(offdata1 $day, offdata1 $femalepc1, col="#ef8961", lwd=1.0,cex=0.5,pch=19)
lines(data1 $day, data1 $ femalePC,col="#ef8961", lwd=2.5)


offdata5 <-offdata[[1]][ which(offdata[[1]]$day <3.17e8 &offdata[[1]]$day >3.12e8), ]
data5 <-data[[1]][ which(data[[1]]$day <3.17e8 &data[[1]]$day >3.12e8), ]

plot(0,type="n",xlim=c(3.12e8,3.17e8),ylim=c(0,25), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(3.12e8,3.17e8,5000000), labels=c("312000","317000"))
points(offdata5 $day, offdata5 $femalepc1, col="#ef8961", lwd=1.0,cex=0.5,pch=19)
lines(data5 $day, data5 $ femalePC,col="#ef8961", lwd=2.5)


offdata1 <-offdata[[1]][ which(offdata[[1]]$day <2.23e8&offdata[[1]]$day >=2.18e8), ]
data1 <-data[[1]][ which(data[[1]]$day <2.23e8&data[[1]]$day >=2.18e8), ]
plot(0,type="n",xlim=c(2.18e8,2.23e8),ylim=c(0,25), xlab="Generation", ylab="Male care",xaxt = "n")
axis(1, at=seq(218000000,223000000,5000000), labels=c("218000","2230000"))
points(offdata1 $day, offdata1 $malepc2, col="#67a9cf", lwd=1.0,cex=0.5,pch=19)
lines(data1 $day, data1 $ malePC, col="#67a9cf", lwd=2.5)




##subset data
offdata5 <-offdata[[1]][ which(offdata[[1]]$day <3.17e8 &offdata[[1]]$day >3.12e8), ]
data5 <-data[[1]][ which(data[[1]]$day <3.17e8 &data[[1]]$day >3.12e8), ]
plot(0,type="n",xlim=c(3.12e8,3.17e8),ylim=c(0,25), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(3.12e8,3.17e8,5000000), labels=c("312000","317000"))
points(offdata5 $day, offdata5 $malepc2, col="#67a9cf", lwd=1.0,cex=0.5,pch=19)
lines(data5 $day, data5 $ malePC, col="#67a9cf", lwd=2.5)

dev.off()

#####=========Supplementary Fig S8=======================

files_to_read = list.files(
  path = "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure S8/param0/",        # directory to search within
  pattern = "all_", # regex pattern, some explanation below
  recursive = TRUE,          # search subdirectories
  full.names = TRUE          # return the full path
)
library(gtools)
files_to_read <- mixedsort(files_to_read)
data = lapply(files_to_read, read.csv)  # read all the matching files


for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day %% 1e5==0), ]
}
## function to plot lines:long
par(mfrow = c(1,1))
par(pty = "m")
plot(0,type="n",xlim=c(0,5e8),ylim=c(0,25), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(0,5e8,5e8), labels=c("0","500000"))
for (index in 5:5){
  lines(data[[index]] $day, data[[index]] $ malePC, col="#71ABD3", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ femalePC,col="#ED875B", lwd=2.5)
}


##=============Selection

plot(0,type="n",xlim=c(0,5e8),ylim=c(0,4), xlab="Generation", ylab=" ",xaxt = "n")
axis(1, at=seq(0,5e8,5e8), labels=c("0","500000"))

for (index in 5:5){
  lines(data[[index]] $day, data[[index]] $preference, col="#F2B600", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ornaments,col="#95C9A9", lwd=2.5)
}

#####=========Supplementary Fig S9===================
#####=========Supplementary Fig S9a
####=======Logistic regression
rm(list=ls())
getwd()
setwd("D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 7/Orgnised data/")
getwd()
# mydata1 <- read.csv("anisogamy_high_recovery_cost.csv")
# str(mydata1)
# mydata2 <- read.csv("anisogamy_no_recovery_cost.csv")
# str(mydata2)
# mydata3 <- read.csv("anisogamy_same recovery cost as mating.csv")
mydata <- read.csv("premating_smallinitial_fem5male5.csv")
str(mydata)

# df1 <- data.frame(mydata1)
# df2 <- data.frame(mydata2)
# df3 <- data.frame(mydata3)
df <- data.frame(mydata)


library(ggplot2)
ggplot(df, aes(pre, u0.002)) + 
  geom_point(data=df,aes(pre, u0.002),size = 2,color="#808080") + geom_smooth(method = "glm",
                                                                              formula = y~x+I(x^2)+I(x^3)+I(x^4)+I(x^5)+I(x^6)+I(x^7)+I(x^7)+I(x^8)+I(x^9),
                                                                              method.args = list(family = binomial(link = "logit")),
                                                                              se = FALSE,colour = "#808080") +
  
  geom_point(data = df, aes(pre, u0.000),size =2,color = "white")+geom_smooth(data=df,aes(pre, u0.000),method = "glm",
                                                                              formula = y~x+I(x^2),
                                                                              method.args = list(family = binomial(link = "logit")), 
                                                                              se = FALSE,colour = "white") +
  geom_point(data = df, aes(pre, u0.001),size =2,color = "#A9A9A9")+geom_smooth(data=df,aes(pre, u0.001),method = "glm",
                                                                                formula = y~x+I(x^2)+I(x^3), 
                                                                                method.args = list(family = binomial(link = "logit")),
                                                                                se = FALSE,colour = "#A9A9A9") +
  geom_point(data = df, aes(pre, u0.005),size =2,color = "black")+geom_smooth(data=df,aes(pre, u0.005),method = "glm",
                                                                              formula = y~x+I(x^2), 
                                                                              method.args = list(family = binomial(link = "logit")),
                                                                              se = FALSE,colour = "black") +
  
  labs(x = "Difference in recovery phase",
       y = "VALUES") +
  theme(panel.grid.major.x = element_blank(), panel.grid.major.y = element_blank(),
        panel.grid.minor.x = element_blank(),panel.grid.minor.y = element_blank(),
        legend.title = element_blank(),panel.background = element_rect(colour = "black",
                                                                       size = 0.5, linetype = "solid"))+
  geom_hline(yintercept=0.5, linetype="dashed")+
  scale_x_continuous(breaks = scales::pretty_breaks(n = 10))+
  geom_rect(fill = "#ED875B", xmin = -Inf, xmax = Inf, ymin =0.5, ymax = Inf, alpha =0.05)+
  geom_rect(fill = "#71ABD3", xmin = -Inf, xmax = Inf, ymin =-Inf, ymax = 0.5, alpha =0.05)+
  geom_point(data=df,aes(pre, u0.002),size = 3,color="#808080") + geom_smooth(method = "glm",
                                                                              formula = y~x+I(x^2)+I(x^3)+I(x^4)+I(x^5)+I(x^6)+I(x^7)+I(x^7)+I(x^8)+I(x^9),
                                                                              method.args = list(family = binomial(link = "logit")),
                                                                              se = FALSE,colour = "#808080") +
  
  geom_point(data = df, aes(pre, u0.000),size =3,color = "white")+geom_smooth(data=df,aes(pre, u0.000),method = "glm",
                                                                              formula = y~x+I(x^2),
                                                                              method.args = list(family = binomial(link = "logit")), 
                                                                              se = FALSE,colour = "white") +
  geom_point(data = df, aes(pre, u0.001),size =3,color = "#A9A9A9")+geom_smooth(data=df,aes(pre, u0.001),method = "glm",
                                                                                formula = y~x+I(x^2)+I(x^3), 
                                                                                method.args = list(family = binomial(link = "logit")),
                                                                                se = FALSE,colour = "#A9A9A9") +
  geom_point(data = df, aes(pre, u0.005),size =3,color = "black")+geom_smooth(data=df,aes(pre, u0.005),method = "glm",
                                                                              formula = y~x+I(x^2),
                                                                              method.args = list(family = binomial(link = "logit")),
                                                                              se = FALSE,colour = "black")







#####=========Supplementary Fig S9b
####=======Logistic regression
rm(list=ls())
getwd()
setwd("D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure 7/Orgnised data/")
getwd()
# mydata1 <- read.csv("anisogamy_high_recovery_cost.csv")
# str(mydata1)
# mydata2 <- read.csv("anisogamy_no_recovery_cost.csv")
# str(mydata2)
# mydata3 <- read.csv("anisogamy_same recovery cost as mating.csv")
mydata <- read.csv("premating_diffinitial_fem10male5.csv")
str(mydata)

# df1 <- data.frame(mydata1)
# df2 <- data.frame(mydata2)
# df3 <- data.frame(mydata3)
df <- data.frame(mydata)


library(ggplot2)
ggplot(df, aes(pre, u0.002)) + 
  geom_point(data=df,aes(pre, u0.002),size = 2,color="#808080") + geom_smooth(method = "glm",
                                                                              formula = y~x+I(x^2)+I(x^3)+I(x^4),
                                                                              method.args = list(family = binomial(link = "logit")),
                                                                              se = FALSE,colour = "#808080") +
  
  geom_point(data = df, aes(pre, u0.000),size =2,color = "white")+geom_smooth(data=df,aes(pre, u0.000),method = "glm",
                                                                              formula = y~x+I(x^2),
                                                                              method.args = list(family = binomial(link = "logit")), 
                                                                              se = FALSE,colour = "white") +
  geom_point(data = df, aes(pre, u0.001),size =2,color = "#A9A9A9")+geom_smooth(data=df,aes(pre, u0.001),method = "glm",
                                                                                formula = y~x+I(x^2)+I(x^3), 
                                                                                method.args = list(family = binomial(link = "logit")),
                                                                                se = FALSE,colour = "#A9A9A9") +
  geom_point(data = df, aes(pre, u0.005),size =2,color = "black")+geom_smooth(data=df,aes(pre, u0.005),method = "glm",
                                                                              formula = y~x+I(x^2), 
                                                                              method.args = list(family = binomial(link = "logit")),
                                                                              se = FALSE,colour = "black") +
  
  labs(x = "Difference in recovery phase",
       y = "VALUES") +
  theme(panel.grid.major.x = element_blank(), panel.grid.major.y = element_blank(),
        panel.grid.minor.x = element_blank(),panel.grid.minor.y = element_blank(),
        legend.title = element_blank(),panel.background = element_rect(colour = "black",
                                                                       size = 0.5, linetype = "solid"))+
  geom_hline(yintercept=0.5, linetype="dashed")+
  scale_x_continuous(breaks = scales::pretty_breaks(n = 10))+
  geom_rect(fill = "#ED875B", xmin = -Inf, xmax = Inf, ymin =0.5, ymax = Inf, alpha =0.05)+
  geom_rect(fill = "#71ABD3", xmin = -Inf, xmax = Inf, ymin =-Inf, ymax = 0.5, alpha =0.05)+
  geom_point(data=df,aes(pre, u0.002),size = 3,color="#808080") + geom_smooth(method = "glm",
                                                                              formula = y~x+I(x^2)+I(x^3)+I(x^4),
                                                                              method.args = list(family = binomial(link = "logit")),
                                                                              se = FALSE,colour = "#808080") +
  
  geom_point(data = df, aes(pre, u0.000),size =3,color = "white")+geom_smooth(data=df,aes(pre, u0.000),method = "glm",
                                                                              formula = y~x+I(x^2),
                                                                              method.args = list(family = binomial(link = "logit")), 
                                                                              se = FALSE,colour = "white") +
  geom_point(data = df, aes(pre, u0.001),size =3,color = "#A9A9A9")+geom_smooth(data=df,aes(pre, u0.001),method = "glm",
                                                                                formula = y~x+I(x^2)+I(x^3), 
                                                                                method.args = list(family = binomial(link = "logit")),
                                                                                se = FALSE,colour = "#A9A9A9") +
  geom_point(data = df, aes(pre, u0.005),size =3,color = "black")+geom_smooth(data=df,aes(pre, u0.005),method = "glm",
                                                                              formula = y~x+I(x^2),
                                                                              method.args = list(family = binomial(link = "logit")),
                                                                              se = FALSE,colour = "black")











#####=========Supplementary Fig S11===========
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure S11/",
                         pattern = "parameter_1_Parental_Care_", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)
datafiles
##subset data, time<=5e6
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day %% 50000==0), ]
}
par(mfrow = c(1,1))
par(pty = "m")
plot(0,type="n",xlim=c(0,50000000),ylim=c(0,20), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(0,50000000,10000000), labels=c("0","10000","20000","30000", "40000","50000"))
for (index in 6:6){
  lines(data[[index]] $day, data[[index]] $ malePC, col="#67a9cf", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ femalePC,col="#ef8961", lwd=2.5)
}


plot(0,type="n",xlim=c(0,50000000),ylim=c(0,20), xlab="Generation", ylab="Parental care",xaxt = "n")
axis(1, at=seq(0,50000000,10000000), labels=c("0","10000","20000","30000", "40000","50000"))
for (index in 8:8){
  lines(data[[index]] $day, data[[index]] $ malePC, col="#67a9cf", lwd=2.5)
  lines(data[[index]] $day, data[[index]] $ femalePC,col="#ef8961", lwd=2.5)
}

####Female care
datafiles = list.files ( "D:/1_PhD project/2_PI_random mating/4_Data/Nature_Comm/Figure S11/",
                         pattern = "parameter_1_individual_", full.names = T)
library (tidyverse)
library (readr)
data = map (datafiles, read_csv)

##subset data, time<=5e6
for (i in 1: length(data)){
  data[[i]] <-data[[i]][ which(data[[i]]$day %% 50000==0), ]
}

## Female care
plot(0,type="n",xlim=c(0,50000000),ylim=c(0,25), xlab="Generation", ylab="Female care",xaxt = "n")
axis(1, at=seq(0,50000000,10000000), labels=c("0","10000","20000","30000", "40000","50000"))

for (index in 6:6){
  points(data[[index]] $day, data[[index]] $femalepc1, col="#ef8961", lwd=1.0,cex=0.5,pch=1)
}


plot(0,type="n",xlim=c(0,50000000),ylim=c(0,25), xlab="Generation", ylab="Female care",xaxt = "n")
axis(1, at=seq(0,50000000,10000000), labels=c("0","10000","20000","30000", "40000","50000"))

for (index in 8:8){
  points(data[[index]] $day, data[[index]] $femalepc1, col="#ef8961", lwd=1.0,cex=0.5,pch=1)
}

###Male care

plot(0,type="n",xlim=c(0,50000000),ylim=c(0,25), xlab="Generation", ylab="Female care",xaxt = "n")
axis(1, at=seq(0,50000000,10000000), labels=c("0","10000","20000","30000", "40000","50000"))

for (index in 6:6){
  points(data[[index]] $day, data[[index]] $malepc2, col="#68A9CF", lwd=1.0,cex=0.5,pch=1)
}


plot(0,type="n",xlim=c(0,50000000),ylim=c(0,25), xlab="Generation", ylab="Female care",xaxt = "n")
axis(1, at=seq(0,50000000,10000000), labels=c("0","10000","20000","30000", "40000","50000"))

for (index in 8:8){
  points(data[[index]] $day, data[[index]] $malepc2, col="#68A9CF", lwd=1.0,cex=0.5,pch=1)
}


