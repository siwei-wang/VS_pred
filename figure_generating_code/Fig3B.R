df<-data.frame(X1=c(3.7,3.6,3.3,3.0),X2=c(3.7,3.58,3.2,2.74),X3=c(10,20,30,40),X4=c(3.3,3.1,2.9,2.8), X5=c(3.0,2.5, 2.3,2.1), 
  upper=c(3.2,2.8,2.65,2.3), lower=c(2.4,2.2,2,1.7))
#NN choise 1005-1010
library(ggplot2)
p1<-ggplot() + xlab(expression(Delta*"t"))+ylab(expression('I'["future:in"]*'(bits)'))+
  #ggtitle('MI neural coding (future) vs. stim (future)')+
  #geom_bar(data=df,aes(x=X3, y=X2,fill=X3),stat="identity",position='dodge')+
  geom_bar(data=df, aes(x=X3, y=X5,fill=X3),stat = 'identity',position='dodge', alpha=0.8)+
  geom_bar(data=df,aes(x=X3, y=X2,fill=X3),stat="identity",position='dodge',alpha=0.4)+
  geom_errorbar(data=df, aes(x=X3, ymax = upper, ymin = lower, width=.9),size=2,linetype="solid")+
  scale_x_continuous(breaks=c(10,20,30,40),labels=c('10ms','20ms','30ms','40ms'))+
  scale_y_continuous(expand=c(0,0))+
  guides(fill=FALSE)+
theme(axis.line.x = element_line(color="black", size = 1),
axis.line.y = element_line(color="black", size = 1))+
theme(
panel.grid.major = element_blank(),
panel.grid.minor = element_blank(),
panel.border = element_blank(),
panel.background = element_blank(),
axis.ticks.length=unit(.75, "cm"),
legend.direction="vertical",legend.justification=c(1,0),legend.position=c(1.03,-0.01),axis.title.x = element_text(face="bold", size=24),
axis.title.y = element_text(face="bold", size=24),plot.title = element_text(size = 26,hjust = 0.5),
           axis.text.x  = element_text(angle=0, vjust=0.5, size=20, color="black"),
           axis.text.y  = element_text(angle=0, vjust=0.5, size=20, color="black"),
          legend.text = element_text(size=20))

p1<-p1+annotate("text", x = 40, y = 2.8, label = "All VS", size=5)
p1<-p1+annotate("text", x = 43, y = 2.2, label = "Triplets", size=5)
#p1<-p1+annotate("text", x = 12, y = 2.45, label = paste("I", "(stim[past]", ":", "stim[future])"),parse=T,size=5)

#pdf("tmp_fig3B.pdf", width=7, height=7)
#png('tmp_fig3B.png',width=7,height=7,units='in',res=300)
#print(p1)
#dev.off()