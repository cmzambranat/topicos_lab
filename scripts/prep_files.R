# Get data
# run this only once
library(here)

# Download VIRION database[https://viralemergence.github.io/virion/]
download.file("https://viralemergence.github.io/virion/Virion.csv.gz", 
              destfile = here("data/Virion.csv.gz"))

# Download mammals distribution data
# new dataset from MOL 
# Marsh et al. 2022 [https://onlinelibrary.wiley.com/doi/10.1111/jbi.14330]
# Get link by checking source code
download.file("https://data.mol.org/downloads/datasets/range/d4fb99cb-6576-46a8-abb5-5ec425bda1b3/HMW_Rodentia.zip", 
              destfile = here("data/rodentia.zip"))

# IUCN data manually downloaded (need to create an account, fill a form and then download the file)

# Get template raster
raster::getData("worldclim", var = "alt", res = 10, path = here('data/'))
