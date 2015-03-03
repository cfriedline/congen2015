
library(SNPassoc)

d = read.table('snpassoc.txt', sep="\t", row.names=1, header=T)

#subtract b/c those are the PCA axes
snp_cols = 2:(ncol(d)-14)
snp_data = setupSNP(d, colSNPs=snp_cols, sep="/")
pca_cols = (ncol(d)-13):ncol(d)
pca_data = d[,pca_cols]

wg = WGassociation(pinitol~1+pca_data$PC1+pca_data$PC2+pca_data$PC3+pca_data$PC4+
pca_data$PC5+pca_data$PC6+pca_data$PC7+pca_data$PC8+pca_data$PC9+pca_data$PC10+
+pca_data$PC11+pca_data$PC12+pca_data$PC13+pca_data$PC14, 
data=snp_data, 
model="co", 
genotypingRate=5)

saveRDS(wg, "wg_pinitol_co.rds")
stats = WGstats(wg)
saveRDS(stats, "wgstats_pinitol.rds")
