df<-read.csv("https://public.tableau.com/app/sample-data/HollywoodsMostProfitableStories.csv")
View(df)
install.packages("tidyverse")
library(tidyverse)
str(df)

colSums(is.na(df))
df1<-df%>%drop_na()
colSums(is.na(df1))
summary(df1)
ggplot(df1, aes(x=Lead.Studio, y=Rotten.Tomatoes..)) + geom_point()+ scale_y_continuous(labels = scales::comma)+coord_cartesian(ylim= c(0, 110))+theme(axis.text.x= element_text(angle = 90))
?ggplot
ggplot(df1, aes(x=Year)) + geom_bar()
write.csv(df1, "clean_df.csv")
