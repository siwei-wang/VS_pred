#reminder upload PCA data 
cols<-c( "#008941", "#006FA6", "#A30059",
"#FFDBE5", "#7A4900", "#0000A6", "#63FFAC", "#B79762")

tmpplot_1st<-ggplot()+geom_point(data=tmpdf1, aes(X1,X2,color=X3))+guides(color=FALSE)+
scale_colour_manual(name='',values = cols[1:8])+
scale_x_continuous(expand = c(0, 0))+scale_y_continuous(expand = c(0, 0))+
xlab('PC1')+ylab('PC2')+
theme(axis.line.x = element_line(color="black", size = 1),
axis.line.y = element_line(color="black", size = 1))+
theme(
axis.title.x = element_text(size=24,color="black",face='bold'),
axis.title.y = element_text(size=24,color="black",face='bold',margin = margin(t = 0, r = -5, b = 0, l = 0)),
axis.text.x = element_text(size=20,color="black"),
axis.text.y = element_text(size=20,color="black"),
panel.grid.major = element_blank(),
panel.grid.minor = element_blank(),
panel.border = element_blank(),
panel.background = element_blank())


#exit(0)
pdf('tmp_pca_rand.pdf',height=7,width=7)
print(tmpplot_1st)
dev.off()