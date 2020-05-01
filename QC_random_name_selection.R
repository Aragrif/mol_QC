#load libraries
library(tools)

#set working directory// change to your directory
setwd('C:/Users/jessi/OneDrive/Desktop/Current_projects/hmw_mammals_vol920200427_RA')

#read shapefile names into xcl // "dig_species" - change the name to the folder with digitized species
bats_names <- tools::file_path_sans_ext(list.files("dig_species", pattern = "*.shp"))
bats_names = as.data.frame(bats_names)

#select random 126
bats_names_rand <- sample_n(bats_names, 126)
unique(bats_names_rand)

#save csv in working directory
write.csv(bats_names_rand, file = "random_bats.csv",row.names = F)

