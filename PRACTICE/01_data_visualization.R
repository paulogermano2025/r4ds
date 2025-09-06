############ PRIMEIRA PARTE - EXEMPLO PESO x COMPRIMENTO DA NADADEIRA

library(tidyverse)       # carregar biblioteca contendo package ggplot2
library(palmerpenguins)  # carregar pacote com dataset
library(ggthemes)        # temas gráficos com paleta adaptada para daltônicos

print(penguins, n = 50)  # exibir n linhas do conjunto de dados 'penguins'

View(penguins)           # mostrar o conjunto em uma aba separada

ggplot(data = penguins, # criar o vínculo da visualização com o conjunto de dados
       mapping = aes(   # função para definir as camadas estéticas do gráfico
         x = flipper_length_mm, y = body_mass_g) # argumentos para definir as variáveis de cada eixo
) +
  geom_point(           # definir a representação das observações com pontos
    mapping = aes(      # configurar elementos estéticos específicos para os pontos de dados
      colour = species, # definir as cores dos pontos variando conforme a varíavel species
      shape = species)  # definir a forma dos pontos variando conforme a variável species
  ) +
  geom_smooth(method = 'lm') +  # adicionar uma linha de tendência linear
  labs(                         # função que modifica os rótulos do gráfico
    title = 'Comprimento da Nadadeira e Peso Corporal',
    subtitle = 'Pinguins das Especies Adelie, Chinstrap e Gentoo',
    x = 'Nadadeira (mm)', y = 'Peso (g)',
    colour = 'Especie', shape = 'Especie'
  ) +
  theme(
    panel.background = element_rect(fill = 'white', colour = 'tomato')
  ) +
  scale_color_colorblind()     # altera o esquema de cores para acessibilidade

############ SEGUNDA PARTE - EXERCÍCIO PROFUNDIDADE x COMPRIMENTO DO BILL (?)

ggplot(data = penguins,
       mapping =
         aes(
           x = bill_length_mm, y = bill_depth_mm
         )) +
  geom_point()


############ TERCEIRA PARTE - EXERCICIO PROFUNDIDADE DO BILL x ESPÉCIE

ggplot(penguins, aes(
  x = flipper_length_mm, y = body_mass_g
)) +
  geom_point(aes(colour = bill_depth_mm)) +
  geom_smooth() +
  theme(
    panel.background = element_rect(fill = 'white'),
    legend.background = element_rect(colour = 'black')
  ) +
  labs(
    colour = 'Bill',
    x = 'Nadadeira (mm)', y = 'Peso (g)'
  )