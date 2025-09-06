####### VISUALIZAÇÃO DE DISTRIBUIÇÕES COM VARIÁVEIS CATEGÓRICAS

library(tidyverse)
library(palmerpenguins)
library(ggthemes)

## Criando gráfico de barras verticais frequência de ocorrência de cada espécie

ggplot(penguins, aes(x = species)) +
  geom_bar(aes(colour = 'tomato'))
