library(here)

dati_progetto <- read.csv (here("dataset.csv"))


dati_progetto$Blood.Pressure <- NULL
dati_progetto$Person.ID <- NULL
dati_progetto$Sleep.Disorder <- NULL
head(dati_progetto)
pairs(dati_progetto[ , c('Age', 'Sleep.Duration', 'Quality.of.Sleep', 'Physical.Activity.Level',
                          'Stress.Level','Heart.Rate', 'Daily.Steps')], pch = 16)
ggpairs(data = dati_progetto, title ="Relationships between predictors & response", 
        lower = list(continuous=wrap("points", alpha = 0.5, size=0.1)))
g = lm( Quality.of.Sleep ~ Age + Sleep.Duration + Physical.Activity.Level +
          Stress.Level + Heart.Rate+ Daily.Steps, data = dati_progetto )
summary(g)
#> DT::datatable(dati_progetto)
