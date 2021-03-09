cols<-c( "#008941", "#006FA6", "#A30059",
"#FFDBE5", "#7A4900", "#0000A6", "#63FFAC", "#B79762", "#004D43", "#8FB0FF", "#997D87",
"#5A0007", "#809693", "#FEFFE6", "#1B4400", "#4FC601", "#3B5DFF", "#4A3B53", "#FF2F80",
"#61615A", "#BA0900", "#6B7900", "#00C2A0", "#FFAA92", "#FF90C9", "#B903AA", "#D16100",
"#DDEFFF", "#000035", "#7B4F4B", "#A1C299", "#300018", "#0AA6D8", "#013349", "#00846F",
"#372101", "#FFB500", "#C2FFED", "#A079BF", "#CC0744", "#C0B9B2", "#C2FF99", "#001E09",
"#00489C", "#6F0062", "#0CBD66", "#EEC3FF", "#456D75", "#B77B68", "#7A87A1", "#788D66",
"#885578", "#FAD09F", "#FF8A9A", "#D157A0", "#BEC459", "#456648", "#0086ED", "#886F4C",
"#34362D", "#B4A8BD", "#00A6AA", "#452C2C", "#636375", "#A3C8C9", "#FF913F", "#938A81",
"#575329", "#00FECF", "#B05B6F", "#8CD0FF", "#3B9700", "#04F757", "#C8A1A1", "#1E6E00",
"#7900D7", "#A77500", "#6367A9", "#A05837", "#6B002C", "#772600", "#D790FF", "#9B9700",
"#549E79", "#FFF69F", "#201625", "#72418F", "#BC23FF", "#99ADC0", "#3A2465", "#922329",
"#5B4534", "#FDE8DC", "#404E55", "#0089A3", "#CB7E98", "#A4E804", "#324E72", "#6A3A4C",
"#000000", "#FFFF00", "#1CE6FF", "#FF34FF", "#FF4A46")

#add I/O and dataframe portion

tmpdf<-data.frame(tmp_c10_allVS[newidx,],factor(labels[newidx]))
colnames(tmpdf)<-c('X1','X2','X3')
p1<-ggplot()+geom_point(data=tmpdf, aes(X1,X2,color=X3))+guides(color=FALSE)+
scale_colour_manual(name='',
	                values = cols[c(1:4)])+
scale_x_continuous(expand = c(0, 0))+scale_y_continuous(expand = c(0, 0))+
xlab('VIB D1')+ylab('VIB D2')+
theme(axis.line.x = element_line(color="black", size = 1),
axis.line.y = element_line(color="black", size = 1))+
theme(
axis.title.x = element_text(size=24,color="black",face='bold'),
axis.title.y = element_text(size=24,color="black",face='bold'),
axis.text.x = element_text(size=20,color="black"),
axis.text.y = element_text(size=20,color="black"),
panel.grid.major = element_blank(),
panel.grid.minor = element_blank(),
panel.border = element_blank(),
panel.background = element_blank())

tmpdf<-data.frame(tmp_c10_atriplet[newidx,],factor(labels[newidx]))
colnames(tmpdf)<-c('X1','X2','X3')
p2<-ggplot()+geom_point(data=tmpdf, aes(X1,X2,color=X3))+guides(color=FALSE)+
scale_colour_manual(name='',
	                values = cols[c(1:4)])+
scale_x_continuous(expand = c(0, 0))+scale_y_continuous(expand = c(0, 0))+
xlab('VIB D1')+ylab('VIB D2')+
theme(axis.line.x = element_line(color="black", size = 1),
axis.line.y = element_line(color="black", size = 1))+
theme(
axis.title.x = element_text(size=24,color="black",face='bold'),
axis.title.y = element_text(size=24,color="black",face='bold',margin = margin(t = 0, r = 5, b = 0, l = 0)),
axis.text.x = element_text(size=20,color="black"),
axis.text.y = element_text(size=20,color="black"),
panel.grid.major = element_blank(),
panel.grid.minor = element_blank(),
panel.border = element_blank(),
panel.background = element_blank())


nlabels<-c(7,18,14) #291,270,327
nidx<-sapply(1:length(nlabels), function(x) which(labels==nlabels[x]))
newidx<-unlist(nidx)
tmpdf<-data.frame(tmp_c10_allVS[newidx,],factor(labels[newidx]))
colnames(tmpdf)<-c('X1','X2','X3')
p3<-ggplot()+geom_point(data=tmpdf, aes(X1,X2,color=X3))+guides(color=FALSE)+
scale_colour_manual(name='',
	                values = cols[c(1:3)])+
scale_x_continuous(expand = c(0, 0))+scale_y_continuous(expand = c(0, 0))+
xlab('VIB D1')+ylab('VIB D2')+
theme(axis.line.x = element_line(color="black", size = 1),
axis.line.y = element_line(color="black", size = 1))+
theme(
axis.title.x = element_text(size=24,color="black",face='bold'),
axis.title.y = element_text(size=24,color="black",face='bold'),
axis.text.x = element_text(size=20,color="black"),
axis.text.y = element_text(size=20,color="black"),
panel.grid.major = element_blank(),
panel.grid.minor = element_blank(),
panel.border = element_blank(),
panel.background = element_blank())

tmpdf<-data.frame(tmp_c10_atriplet[newidx,],factor(labels[newidx]))
colnames(tmpdf)<-c('X1','X2','X3')
p4<-ggplot()+geom_point(data=tmpdf, aes(X1,X2,color=X3))+guides(color=FALSE)+
scale_colour_manual(name='',
	                values = cols[c(1:3)])+
scale_x_continuous(expand = c(0, 0))+scale_y_continuous(expand = c(0, 0))+
xlab('VIB D1')+ylab('VIB D2')+
theme(axis.line.x = element_line(color="black", size = 1),
axis.line.y = element_line(color="black", size = 1))+
theme(
axis.title.x = element_text(size=24,color="black",face='bold'),
axis.title.y = element_text(size=24,color="black",face='bold',margin = margin(t = 0, r = -10, b = 0, l = 0)),
axis.text.x = element_text(size=20,color="black"),
axis.text.y = element_text(size=20,color="black"),
panel.grid.major = element_blank(),
panel.grid.minor = element_blank(),
panel.border = element_blank(),
panel.background = element_blank())


library(gridExtra)
library(grid)
maxWidth = unit.pmax(p1$widths[2:3], p2$widths[2:3],p3$widths[2:3],p4$widths[2:3])
p1$widths[2:3] <- maxWidth
p2$widths[2:3] <- maxWidth
p3$widths[2:3] <- maxWidth
p4$widths[2:3] <- maxWidth

pdf('Fig5A.pdf', height=7,width=7)
print(p1)
dev.off()

pdf('Fig5B.pdf', height=7,width=7)
print(p2)
dev.off()

pdf('Fig5C.pdf', height=7,width=7)
print(p3)
dev.off()

pdf('Fig5D.pdf', height=7,width=7)
print(p4)
dev.off()
