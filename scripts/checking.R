# Using vromm to (lazy) read VIRION database
virion = vroom(here("data/Virion.csv.gz"))

# Check VIRION structure
glimpse(virion)

# List viral families
virion %>%
  pull(VirusFamily) %>%
  sort() %>%
  unique()
# List viral genera
virion %>%
  pull(VirusGenus) %>%
  sort() %>%
  unique()
# List host orders
virion %>%
  filter(HostClass == 'mammalia') %>%
  pull(HostOrder) %>%
  unique()
  
# Note there are `NAs`
