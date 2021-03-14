df<-data.frame(X1=c(2.44,2.1,1.9,1.8,1.4,1.35), X2=c('0','1','2','2','3','3'),X3=c('0','1','2','3','2','3'))
pcav<-2.6
library(ggplot2)
ptmp2<-ggplot()+geom_bar(data=df[which(df$X2==2),], aes(X3,X1,fill = X3,alpha=0.5),stat = 'identity',position="dodge")+
ylab(expression(I["future:"*theta]*"(bits)"))+theme_bw()+
geom_bar(data=df[which(df$X2==0),], aes(X3,X1,fill = X3),stat = 'identity',position="dodge")+
geom_bar(data=df[which(df$X2==3),], aes(X3,X1,fill = X3),stat = 'identity',position="dodge")+
geom_bar(data=df[which(df$X2==1),], aes(X3,X1,fill = X3),stat = 'identity',position="dodge")+
geom_text(data=df[which(df$X2==0),],aes(X3,X1),label="PCA",position = position_dodge(width = 1),hjust=0.5,vjust=1,size=7,parse = TRUE)+
geom_text(data=df[which(df$X2==1),],aes(X3,X1),label="I[future:limit]",position = position_dodge(width = 1),hjust=0.5,vjust=1,size=7,parse = TRUE)+
geom_text(data=df[which(df$X2==2 & df$X3==2),],aes(X3,X1),label='All VS',position = position_dodge(width = 1),hjust=0.5,vjust=1,size=7)+
geom_text(data=df[which(df$X2==2 & df$X3==3),],aes(X3,X1),label='Triplet',position = position_dodge(width = 1),hjust=0.5,vjust=1,size=7)+
geom_text(data=df[which(df$X2==3),],aes(X3,X1),label='VIB',position = position_dodge(width = 1),hjust=0.5,vjust=0,size=7)+
geom_hline(yintercept=2.45)+guides(fill=FALSE,alpha=FALSE)+
#annotate("text", x = 2.5, y = 2.6, parse=T, size=7, label=as.character(expression(I[theta]*" in the input current")))+
theme(
axis.line.x = element_line(color="black", size = 1),
axis.line.y = element_line(color="black", size = 1),
panel.grid.major = element_blank(),
panel.grid.minor = element_blank(),
panel.border = element_blank(),
panel.background = element_blank(),
axis.title.y = element_text(face="bold", size=20),
axis.text.y  = element_text(angle=0, vjust=0.5, size=20,color="black"),legend.text = element_text(size=20),
axis.text.x = element_blank(), axis.ticks = element_blank(), axis.title.x=element_blank())
#scale_fill_manual(values=c('grey1','grey1','grey1'))
pdf('predInfo_allcondition.pdf', height=7,width=7)
print(ptmp2)
dev.off()