
if(!"tufte" %in% installed.packages()) install.packages("tufte")
if(!"BiocManager" %in% installed.packages()) install.packages("BiocManager")
if(!"EBImage" %in% installed.packages()) BiocManager::install("EBImage")
if(!"devtools" %in% installed.packages()) install.packages("devtools")
if(!"robCompositions" %in% installed.packages()) devtools::install_github("matthias-da/robCompositions")

standard_installs <-
c("dplyr", "knitr", "stringr", "tidyverse", "COVID19", "gtrendsR", 
"jsonlite", "qualtRics", "rvest", "psych", "summarytools", "colorspace", 
"ggExtra", "ggmap", "ggplot2", "ggstatsplot", "ggthemes", "gtools", 
"Hmisc", "Rmisc", "scales", "tidyr", "lsr", "pwr", "reshape2", 
"car", "multcomp", "PMCMR", "lm.beta", "lmtest", "sandwich", 
"stargazer", "hornpa", "factoextra", "ggiraph", "ggiraphExtra", 
"NbClust", "forcats", "ggcorrplot", "HH", "janitor", "kableExtra", 
"sjlabelled", "tibble", "wordcloud", "rmarkdown", "DescTools", 
"pmr", "rstatix", "robCompositions", "pastecs", "ggpubr", "plyr", 
"devtools", "haven", "openssl", "readxl", "latex2exp", "cowplot", 
"gridExtra", "logistf", "mfx", "plotly", "bookdown", "tufte", 
"PMCMRplus", "GPArotation", "EBImage", "data.table", "fRegression", 
"readr", "packrat", "BiocManager", "gganimate", "gmodels", "shiny", 
"xtable", "learnr", "checkr", "rJava", "venneuler")
lapply(function(x) install.packages(x), standard_installs[!standard_installs %in% installed.packages()])

