# visualize.R

# Installe ggplot2 si besoin
if (!require("ggplot2")) {
  install.packages("ggplot2", repos = "http://cran.us.r-project.org")
}

# Charge le package
library(ggplot2)

# Exemple de visualisation non triviale : boîte à moustaches + points
ggplot(mpg, aes(x = class, y = hwy, fill = class)) +
  geom_boxplot() +
  geom_jitter(width = 0.2, alpha = 0.5) +
  theme_minimal() +
  labs(title = "Consommation sur autoroute par type de véhicule",
       x = "Type de véhicule",
       y = "Miles par gallon (autoroute)") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
