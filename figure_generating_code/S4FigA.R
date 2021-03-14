#add c1itx and a1ity data frames

dfpt1<-data.frame(X1=c1itx, X2=a1ity, X3=c(rep('1',120)))

p<-ggplot()+geom_line(data=df1, aes(x=itx,y=ity), size=2, color='darkblue')+scale_y_continuous(expand = c(0, 0),limits=c(2.2,3.5))+
scale_x_continuous(expand = c(0, 0),limits=c(3,4.8))+
xlab(expression('I'["past:in"]*'(bits)'))+ylab(expression('I'["future:in"]*'(bits)'))+
geom_point(data=dfpt1, aes(x=X1, y=X2, color=X3),size=3, alpha=0.5)+labs(title="A")+
#geom_point(data=alldf_gj, aes(x=X1,y=X2,color=X4),size=4,alpha=1)+
#geom_errorbarh(data=dferrht_gj, aes(x=X3, y=X4, xmax = X1, xmin = X2,width=.1, height=.1, color=X5),size=2,linetype="solid")+
#geom_errorbar(data=dferrt_gj, aes(x=X3, y=X4,  ymax = X1, ymin = X2, width=.1,height=.1, color=X5),size=2,linetype="solid")+
guides(color=FALSE)+

#scale_colour_discrete(name='',
##                  values=c("#E69F00", "#56B4E9","#009E73", "#990000"),
#                    limits=c("1", "2"),
#                    labels=c("triplet no GJs","triplet w/ GJs"))+
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

#p<-p+annotate("text", x=6,y=3.45,size=6,label="All VS")
#p<-p+annotate("text", x=4.5,y=2.6,size=6,label="Triplets")
#p<-p+annotate("text", x=1.5,y=0.3,size=8,label="Allowed")
#p<-p+annotate("text", x=1.3,y=4.8,size=8,label="Forbidden")
#p<-p+annotate("text", x=6,y=4.8,size=10,label=expression(Delta*"t=10ms"), parse=T)
pdf('tmp_IB10_scatter.pdf',width=7,height=7)
print(p)
dev.off()