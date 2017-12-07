file = '/home/garner1/Work/dataset/rm15/outdata/chr.loc.uminumb'
file = '/home/garner1/Work/dataset/rm15/outdata/filtered'
f = read.table(file=file, sep = " ", header = FALSE)

chromosomes = c("chr1","chr2","chr3","chr4","chr5","chr6","chr7","chr8","chr9",
                "chr10","chr11","chr12","chr13","chr14","chr15","chr16","chr17","chr18","chr19","chr20","chr21","chr22",
                "chrX","chrY")

for (chr in chromosomes[2:2]) {
  data = f[f$V1==chr, 2]
  
  # Ward Hierarchical Clustering
  d <- dist(unique(data), method = "manhattan") # distance matrix
  hc <- hclust(d, method="complete") 
  hcd = as.dendrogram(hc)

  plot(hcd, ylim = c(1,1000000),labels=FALSE)
  }
