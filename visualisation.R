install.packages("ggplot2")


library(ggplot2)

# Générer des données aléatoires
set.seed(123)
data <- data.frame(
  x = rnorm(100),
  y = rnorm(100),
  label = sample(letters[1:5], 100, replace = TRUE)
)

# Créer une palette de couleurs aléatoires
colors <- rainbow(length(unique(data$label)))

# Créer le nuage de points avec des couleurs aléatoires
ggplot(data, aes(x = x, y = y, color = label)) +
  geom_point() +
  scale_color_manual(values = colors) +
  theme_minimal()

