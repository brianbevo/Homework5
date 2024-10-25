library(ggplot2)
library(tibble)
library(rvest)

# data source website <- https://www.basketball-reference.com/wnba/

NY <- read.csv('NY_Liberty2024.csv')
MN <- read.csv('MN_Lynx_2024.csv')
CN <- read.csv('CN_Suns_2024.csv')


NY_tib <- as_tibble(NY)

ggplot(NY_tib, aes(x=X3P)) + geom_histogram() + labs(title = "NY Liberty Distribution of 3 Pointers by Player  ", x = ('3 Point Field Goals'))

                                                     
MN_tib <- as_tibble(MN)

ggplot(MN_tib, aes(x=X3P)) + geom_histogram() + labs(title = "MN Lynx Distribution of 3 Pointers by Player  ", x = ('3 Point Field Goals'))


CN_tib <- as_tibble(CN)

ggplot(CN_tib, aes(x=X3P)) + geom_histogram() + labs(title = "CN Suns Distribution of 3 Pointers by Player  ", x = ('3 Point Field Goals'))

team <- NY_tib %>% full_join(MN_tib)

team <- team  %>% full_join(CN_tib)

team <- team[rowSums(is.na(team)) != ncol(team), ]
team <- filter(team, !row_number() %in% 13)


ggplot(team, aes(x=X3P)) + geom_histogram() + labs(title = "Distribution of 3 Pointers by Player  ", x = ('3 Point Field Goals'))


rand_player <- sample(team$Player, 1) 

chosenPlayer <- team %>% filter(Player == rand_player)


ggplot(team, aes(x = MP, y = TRB)) + geom_point(color = "red", size = 3) + geom_point(data = chosenPlayer, aes(x = MP, y = TRB), 
             color = "orange", size = 5) + geom_text(data = chosenPlayer, aes(label = Player), vjust = -0.8, color = "orange") + 
             labs( title = "Scatterplot between Minutes Played and Total Rebounds", x = "Minutes Played", y = "Total Rebounds"  )
