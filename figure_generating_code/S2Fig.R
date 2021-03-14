library(ggplot2)
axis1<-as.matrix(read.table('axisall.csv',sep=',',header=FALSE))
#first supplementary figure. 
#idx1<-which(axis1[,5])
res1<-hist(axis1[,5],50)

tmpdf<-data.frame(X1=c(res1$mids), X2=c(res1$counts))

p1<-ggplot()+geom_bar(data=rbind(tmpdf), aes(X1,X2),width=8, stat='identity', color='grey',fill='grey')+scale_x_continuous(limits = c(0, 360))+
#scale_x_continuous(limits = c(0, 360),breaks=c(0,90,180,270),labels = c(expression("0"*degree),expression("90"*degree),expression("180"*degree),expression("270"*degree)))+
ggtitle(expression(Delta*"t=10ms"))+
#labs(tag = "A")+
coord_polar()+theme(axis.text.y = element_blank(),
  axis.text.x  = element_blank(),
  plot.tag  = element_text(angle=0, hjust=0.5,vjust=0.5, size=24, color="black"),
  plot.title  = element_text(angle=0, hjust=0.5, vjust=0.5, size=40, color="black"),
	axis.title.x = element_blank(),axis.title.y = element_blank(),axis.ticks = element_blank())+
theme(panel.border = element_blank(),
  panel.grid.major = element_blank(),
  panel.grid.minor = element_blank(),panel.background = element_blank())


pdf('rose_tmp1.pdf', height=7,width=7)
print(p1)
dev.off()

res1<-hist(axis1[,6],50)

tmpdf<-data.frame(X1=c(res1$mids), X2=c(res1$counts))

p2<-ggplot()+geom_bar(data=tmpdf, aes(X1,X2),width=8, stat='identity', color='grey',fill='grey')+
ggtitle(expression(Delta*"t=20ms"))+
#labs(tag = "B")+
scale_x_continuous(limits = c(0, 360))+
#scale_x_discrete(limits=c(0,90,180,270), labels = c(expression("0"*degree),expression("90"*degree),expression("180"*degree),expression("270"*degree)))+
coord_polar()+theme(axis.text.y = element_blank(),
  axis.text.x  = element_blank(),
  plot.tag  = element_text(angle=0, hjust=0.5,vjust=0.5, size=30, color="black"),
  plot.title  = element_text(angle=0, hjust=0.5, vjust=0.5, size=40, color="black"),
	axis.title.x = element_blank(),axis.title.y = element_blank(),axis.ticks = element_blank())+
theme(panel.border = element_blank(),
  panel.grid.major = element_blank(),
  panel.grid.minor = element_blank(),panel.background = element_blank())


pdf('rose_tmp2.pdf', height=7,width=7)
print(p2)
dev.off()

res1<-hist(axis1[,7],50)

tmpdf<-data.frame(X1=c(res1$mids), X2=c(res1$counts))

p3<-ggplot()+geom_bar(data=tmpdf, aes(X1,X2),width=8, stat='identity', color='grey',fill='grey')+
ggtitle(expression(Delta*"t=30ms"))+
#labs(tag = "C")+
scale_x_continuous(limits = c(0, 360))+
#scale_x_discrete(limits=c(0,90,180,270), labels = c(expression("0"*degree),expression("90"*degree),expression("180"*degree),expression("270"*degree)))+
coord_polar()+theme(axis.text.y = element_blank(),
  axis.text.x  = element_blank(),
  plot.tag  = element_text(angle=0, hjust=0.5,vjust=0.5, size=30, color="black"),
  plot.title  = element_text(angle=0, hjust=0.5,vjust=0.5, size=40, color="black"),
	axis.title.x = element_blank(),axis.title.y = element_blank(),axis.ticks = element_blank())+
theme(panel.border = element_blank(),
  panel.grid.major = element_blank(),
  panel.grid.minor = element_blank(),panel.background = element_blank())


pdf('rose_tmp3.pdf', height=7,width=7)
print(p3)
dev.off()

res1<-hist(axis1[,8],50)

tmpdf<-data.frame(X1=c(res1$mids), X2=c(res1$counts))

p4<-ggplot()+geom_bar(data=tmpdf, aes(X1,X2),width=8, stat='identity', color='grey',fill='grey')+
ggtitle(expression(Delta*"t=40ms"))+
#labs(tag = "D")+
scale_x_continuous(limits = c(0, 360))+
#scale_x_discrete(limits=c(0,90,180,270), labels = c(expression("0"*degree),expression("90"*degree),expression("180"*degree),expression("270"*degree)))+
coord_polar()+theme(axis.text.y = element_blank(),
  axis.text.x  = element_blank(),
  plot.tag  = element_text(angle=0, hjust=0.5,vjust=0.5, size=30, color="black"),
  plot.title  = element_text(angle=0, hjust=0.5, vjust=0.5, size=40, color="black"),
	axis.title.x = element_blank(),axis.title.y = element_blank(),axis.ticks = element_blank())+
theme(panel.border = element_blank(),
  panel.grid.major = element_blank(),
  panel.grid.minor = element_blank(),panel.background = element_blank())

pdf('rose_tmp4.pdf', height=7,width=7)
print(p4)
dev.off()



