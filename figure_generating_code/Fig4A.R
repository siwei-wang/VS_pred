df<-data.frame(X1=c(2.35, 2.3,2.15,2.25),X2=c(1.99, 1.9,1.85,1.9),X3=c(10,20,30,40),X4=c(1.8, 1.75,1.7,1.75), X5=c(2.15, 2.05,1.95,2.0))
#NN choise 1005-1010
library(ggplot2)
p1<-ggplot() + xlab(expression(Delta*"t"))+ylab(expression(I["future:"*theta]*"(bits)"))+geom_point(data=df,aes(x=X3, y=X1))+geom_point(data=df,aes(x=X3, y=X5))+
geom_line(data=df,aes(x=X3, y=X1, group=1))+geom_line(data=df,aes(x=X3, y=X5, group=1),linetype = "dashed")+
  #ggtitle('MI neural coding (future) vs. stim (future)')+
  #geom_bar(data=df,aes(x=X3, y=X2,fill=X3),stat="identity",position='dodge')+
  geom_bar(data=df, aes(x=X3, y=X4,fill=X3),stat = 'identity',position='dodge', alpha=0.8)+
  geom_bar(data=df,aes(x=X3, y=X2,fill=X3),stat="identity",position='dodge',alpha=0.4)+
  scale_x_continuous(breaks=c(10,20,30,40),labels=c('10ms','20ms','30ms','40ms'))+
  scale_y_continuous(limits=c(0,2.5))+
  guides(fill=FALSE)+
  theme(axis.line.x = element_line(color="black", size = 0.5),axis.line.y = element_line(color="black", size = 0.5))+
labs(title='A')+
theme(
    #plot.title = element_text(margin = margin(t=20, l=0, b = -10)),
    plot.title = element_text(hjust=-0.08,vjust=0),
    text = element_text(size = 25),
    legend.title=element_blank(),
   axis.line.x = element_line(color="black", size = 1),
panel.grid.major = element_blank(),
panel.grid.minor = element_blank(),
panel.border = element_blank(),
panel.background = element_blank(),
axis.line.y = element_line(color="black", size = 1),
axis.title.y = element_text(face="bold", size=20),
axis.text.x  = element_text(angle=0, vjust=0.5, size=20,color="black"),
axis.text.y  = element_text(angle=0, vjust=0.5, size=20,color="black"),legend.text = element_text(size=20))


p1<-p1+annotate("text", x = 43, y = 1.95, label = "All VS", size=5)
p1<-p1+annotate("text", x = 41.5, y = 1.7, label = "VS 5-6-7", size=5)
#p1<-p1+annotate("text", x = 10, y = 2.1, label = expression("I[future:"*theta*"]",parse=T, size=5)
#p1<-p1+annotate("text", x = 16, y = 2.45, label = paste("I("*theta*"[past]", ":", theta*"[future])"),parse=T,size=5)

pdf("tmp_fig4A.pdf", width=7, height=7)
#png('tmp_fig4B.png',width=7,height=7,units='in',res=300)
print(p1)
dev.off()