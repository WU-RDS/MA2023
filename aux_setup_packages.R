if(!"packrat" %in% installed.packages()) install.packages("packrat")
if(!"tufte" %in% installed.packages()) install.packages("tufte")
if(!"BiocManager" %in% installed.packages()) install.packages("BiocManager")
if(!"EBImage" %in% installed.packages()) BiocManager::install("EBImage")
if(!"devtools" %in% installed.packages()) install.packages("devtools")
if(!"robCompositions" %in% installed.packages()) devtools::install_github("matthias-da/robCompositions")
suppressWarnings(reqPackages <- packrat:::dirDependencies("."))
reqPackages <- reqPackages[!reqPackages %in% installed.packages()]
lapply(reqPackages, install.packages)
