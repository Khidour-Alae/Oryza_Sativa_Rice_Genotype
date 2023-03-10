## load data
load(file="MRR_projet_park.RData")
ls()
dim(geno.df)
geno.df[1:10,1:10]
dim(pheno.df)
pheno.df[1:10,1:10]
dim(Xmat)

## choose a response variable: i=1,...36
names(pheno.df)
i = 36 # i=1, ..., 36
y = matrix(pheno.df[,i+2])
yname = names(pheno.df)[i+2]
rownames(y) = pheno.df$NSFTVID
length(y)
str(y)
summary(y)


## explanatory varibles in Xmat: n x p matrix  
# = NA # missing data
# = 0  # homozygous, major allele
# = 1  # heterozygous
# = 2  # homozygous, minor allele
dim(Xmat)
Xmat[1:5,1:5]
j = 7  # j = 1,...,p
table(Xmat[,j]) 

# each variable (column) corresponds to a genetic marker
# genetic marker information is given in gene.df
dim(geno.df)
geno.df[1:5,1:10]

