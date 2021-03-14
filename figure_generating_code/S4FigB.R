#load IB for stim
library(ggplot2)
triplet10<-as.matrix(read.table('tripletvsstim10.csv', sep=',',header=FALSE))
dfpt1<-data.frame(X1=triplet10[,1], X2=triplet10[,2], X3=c(rep('1',120)))

#p1<-ggplot()+
#geom_line(data=dfg1, aes(x=itx,y=ity), size=2, color='darkblue')+
p1<-ggplot()+geom_area(data=dfg1, aes(x=itx,y=ity), fill="lightblue", alpha=0.5)+geom_point(data=dfpt1, aes(x=X1, y=X2,color=X3), alpha=0.5)+
geom_line(data=dfg1, aes(x=itx,y=ity), size=2, color='darkblue')+
xlab(expression(I["past:in"]*"(bits)"))+ylab(expression(I["future:"*theta]*"(bits)"))+
scale_x_continuous(expand = c(0, 0),limits=c(2.5,5))+scale_y_continuous(expand = c(0, 0),limits=c(1.5,2.5))+guides(color=FALSE)+
#geom_segment(aes(x = 3.44, y = 1.4, xend = 3.44, yend = 1.8), size=1, color="#56B4E9", arrow = arrow(length = unit(0.3, "cm")))+
#geom_segment(aes(x = 3.3, y = 1.85, xend = 3.08, yend = 1.85), size=1, color="#E69F00",arrow = arrow(length = unit(0.3, "cm")))+
#geom_point(data=alldf, aes(x=X1,y=X2,color=X4),size=4,alpha=1)+
scale_colour_manual(name='',
                  values=c( "#00BFC4"),
                    limits=c("1"),
                    labels=c(""))+labs(title="B")+
theme(axis.line.x = element_line(color="black", size = 1),
axis.line.y = element_line(color="black", size = 1))+
theme(
plot.title = element_text(hjust=-0.15,vjust=0.5),
text = element_text(size = 25),
panel.grid.major = element_blank(),
panel.grid.minor = element_blank(),
panel.border = element_blank(),
panel.background = element_blank(),
axis.ticks.length=unit(.1, "cm"),

legend.direction="vertical",legend.justification=c(1,0),legend.position=c(1.03,-0.01),axis.title.x = element_text(face="bold", size=20),
axis.title.y = element_text(face="bold", size=20),
axis.text.x  = element_text(angle=0, vjust=0.5, size=20,color="black"),
axis.text.y  = element_text(angle=0, vjust=0.5, size=20,color="black"),legend.text = element_text(size=20))

png('tmpstim_IB10_scatter.png',width=7,height=7,units='in',res=300)
print(p1)
dev.off()
#p1<-p1+annotate("text", x=1,y=0.3,size=8,label="Allowed")
#p1<-p1+annotate("text", x=0.8,y=2.3,size=8,label="Forbidden")

#pdf('tmpstim_IB10scatter.pdf',width=7,height=7)
#print(p1)
#dev.off()