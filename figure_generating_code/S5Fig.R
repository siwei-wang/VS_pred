
#read in tripletvsstim10.csv and alltriplet_10ms.csv 

fr<-sapply(1:120,function(x) triplet10[x,2]/a1ity[x])
df<-data.frame(X1=c1itx,X2=fr,X3=rep('1',120))
df1<-data.frame(X1=c1itx[101],X2=fr[101],X3=c('1'))
p1<-ggplot()+
geom_point(data=df, aes(x=X1,y=X2,color=X3))+
geom_point(data=df1, aes(x=X1,y=X2),shape=1,color='red')+guides(color=FALSE)+
geom_segment(aes(x=3.77,xend=3.77,y=0.65,yend=0.72),color="#00BFC4", arrow = arrow(length = unit(0.5, "cm")))+
xlab(expression(I["past:in"]*"(bits)"))+ylab(expression(I[future:stim]*"/"*I["future:in"]))+
scale_colour_manual(name='',
                  values=c( "#00BFC4"),
                    limits=c("1"),
                    labels=c(""))+
                    theme(axis.line.x = element_line(color="black", size = 1),
axis.line.y = element_line(color="black", size = 1))+
theme(
#plot.title = element_text(hjust=-0.15,vjust=0.5),
axis.line.x = element_line(color="black", size = 1),
axis.line.y = element_line(color="black", size = 1),
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

pdf('scatter_alltriplet_tmp10.pdf', height=7,width=7)
print(p1)
dev.off()