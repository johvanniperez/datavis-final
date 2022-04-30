library(wordcloud)
library(scales)

windows.options(width=100, height=100)

data <- read.csv("plant_a_processed.csv")
df1 <- data.frame(data)
#df1.column
df2 <- data.frame(table(unlist(strsplit(tolower(df1$words), " "))))

print(df1)

write.csv(df2, "C:\\Users\\perez\\Documents\\DataVizProj3\\plant_a_processed_wordfreq.csv", row.names=FALSE)

#d <- read.csv("covid_a_processed_wordfreq.csv", header=TRUE)
#print(d)
#wordcloud(words = d$Var1, freq = d$Freq, scale = c(4,0), min.freq=1, max.words=Inf, color=alpha("red", seq(0.4,1, 0.05)),random.order = TRUE, rot.per=0.45, use.r.layout = FALSE)