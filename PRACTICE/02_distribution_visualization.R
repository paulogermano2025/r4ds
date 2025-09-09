####### VISUALIZAÇÃO DE DISTRIBUIÇÕES COM VARIÁVEIS CATEGÓRICAS

library(tidyverse)
library(palmerpenguins)
library(ggthemes)
library(vioplot)

## Criando gráfico de barras verticais frequência de ocorrência de cada espécie

ggplot(penguins, aes(x = species)) +
  geom_bar(aes(colour = 'tomato'))


vioplot(penguins$bill_depth_mm, grp,
        col = 'tomato')

vioplot(bill_length_mm ~ island , data = penguins,
        main = 'what?',
        xlab = 'Island', ylab = 'Bill Profundo',
        col = c('lightgreen', 'lightblue', 'palevioletred'))
        legend('right', legend = c('Biscoe','Dream','Torgersen'),
               fill = c('lightgreen', 'lightblue', 'palevioletred'), cex = 0.7)

?vioplot

