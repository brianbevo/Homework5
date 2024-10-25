# Homework5

Include a "readme" file in your repository that fully explains the source of your data, what analyses you ran, and clear directions for how to reproduce your results.

1. Data Source Retrival

The data used in this analysis was derived from the following website <- https://www.basketball-reference.com/wnba/

- It is an official stats tracker for the WNBA league with basketball related statistics for all official players within the league. The specific data I pulled was the team statistics including each perosn with the roster, on their 2024 seasons performance. The statistics pulled included 3 pointer percentages, attempts, shotsmade, as well as rebounds assists ect.

The three teams that I chose were the New York Liberty, Minesota Lynx, and the Cincinatti Suns. Withing each teams states page, you can export the total season stats in to an excel file. After exporting each of the teams total stats into a excel file , I then resaved them as csv files which were what was opened in the rstudio. I have attached the same csv files within the repository.


2. Data Analysis

THe first anlaysis I ran was a distribution on the 3 point field goal pointers made across all players from the 3 teams in the 2024 season. The graph was skewed tot he right with the average mean being 15 3 pointers and a q3 of 42 points with a couple outliers hitting above the 80s. On the other hand the second analysis was a data plot graph taht attempted to show the correlation between minutes present within the game and the total amount of rebounds. THe correlation coefficition was .85 meaninging their is a strong correlaiton between player gaining more rebound the longer their in the game which can be visibily seen in the positive trendng scatterplot.

3. Graph Reproducability

The first histogram was made by merging the three csv files together using full join. After that I cleaned the data set to remove any rows that only had na values across the row, or didn;t have any player names. From there it was a simple ggplot histogram to show the distrubtuion of three pointers made.

The second graph scatter plot, was first made by using a random player to be highlighted. This was achieved using sample to randomly choose a player from the three players, than pulling it out into df using filter. Then using ggplot to create a scatter plot, as well as highlighting the data point that matched the random player in a different color (orange) as the other data points (red).
