df<-data.frame(X1=c(5.14,4.2,3.6,2.8,3.7,3.58,3.2,2.74,1.8160,1.7014,1.6207,
	1.5647,1.6418,1.5623,1.4961,1.4589),
X2=c(10,20,30,40,10,20,30,40,10,20,30,40,10,20,30,40),
X3=c('c','c','c','c','a','a','a','a','g0','g0','g0','g0','d','d','d','d'))
library(ggplot2)
library(latex2exp)
pdecay<-ggplot()+geom_line(data=df, aes(x=X2,y=X1,linetype=X3),size=1)+geom_point(data=df, aes(x=X2,y=X1),size=5,shape=21)+
xlab(expression(Delta*'t (ms)'))+ylab("bits")+
guides(linetype = guide_legend(ncol=1,override.aes = list(fill=NA)), #fill=NA removes the annoying grey background
	shape=FALSE)+scale_shape_manual(values = c(18, 16, 17,15))+
scale_linetype_manual(name='',
                     values=c(1,2,3,4),
                    limits=c("c", "a","g0","d"),
                    labels = unname(TeX(c("$I_{future:limit}$", "$I_{future:in}(axonal \\, GJ)$","$I_{future:in}(w/o\\, GJ)","$I_{future:in}(dend\\, GJ)$"))))+
                    #labels=c(expression(I["future:limit"]),expression(I["future:in"]*" (axon GJ)"),expression(I["future:in"]*" (w/o GJ)"),expression(I["future:in"]*" (dend GJ)")))+
theme(axis.line.x = element_line(color="black", size = 1),
axis.line.y = element_line(color="black", size = 1))+
theme(
legend.text.align = 0,
panel.grid.major = element_blank(),
panel.grid.minor = element_blank(),
panel.border = element_blank(),
panel.background = element_blank(),
axis.ticks.length=unit(.5, "cm"),
legend.key=element_blank(),
legend.key.width = unit(5, "line"),
legend.direction="vertical",legend.justification=c(1,0),legend.position=c(1.03,0.73),axis.title.x = element_text(face="bold", size=24),
axis.title.y = element_text(face="bold", size=24),
           axis.text.x  = element_text(angle=0, vjust=0.5, size=20, color="black"),
           axis.text.y  = element_text(angle=0, vjust=0.5, size=20, color="black"),
          legend.text = element_text(size=28))

pdf('tmp_MIdecay_Aug2020.pdf',width=7,height=7)
print(pdecay)
dev.off()