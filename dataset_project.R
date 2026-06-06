library(here)

dati_progetto <- read.csv (here("dataset.csv"))


dati_progetto$Blood.Pressure <- NULL
dati_progetto$Person.ID <- NULL
dati_progetto$Sleep.Disorder <- NULL

head(dati_progetto)

#> DT::datatable(dati_progetto)
