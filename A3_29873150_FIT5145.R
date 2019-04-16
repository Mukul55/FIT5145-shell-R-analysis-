library(dplyr)
# install.packages('stringr')
library(stringr)
getwd()
obama_data <- read.csv("C:\\Users\\mgup0003\\Downloads\\obama.txt", fill = TRUE, stringsAsFactors = FALSE)


colnames(obama_data) <- c("Time")
obama_data_final <- obama_data[complete.cases(obama_data), ]
# str(obama_data)
obama_data$Time<- strptime(obama_data$Time, format = "%a %b %d %H:%M:%S %z %Y")
hist(obama_data$Time, breaks = "hours", col="blue" , main = "Obama tweets with Datetime",
     xlab = "Datetime (2014)", ylab = "Number of tweets")


tweets_per_author <- read.table("C:\\Users\\Mukul\\Downloads\\tweets_author.txt", sep = " ", fill = TRUE, stringsAsFactors = FALSE)
tweets_per_author_final <- tweets_per_author[complete.cases(tweets_per_author), ]
head(tweets_per_author)
aggregate(V1 ~ V2, data = tweets_per_author, count)

tweets_per_author <- read.table("C:\\Users\\Mukul\\Downloads\\tweets_author.txt", sep = " ", fill = TRUE, stringsAsFactors = FALSE)
tweets_per_author_final <- tweets_per_author[complete.cases(tweets_per_author), ]
hist(tweets_per_author$V1, breaks = 175, col="pink" , main = "Tweet count of users",
     xlab = "Tweet count", ylab = "Number of users", xlim = c(0,35))

tweets_per_author %>% count(letter, number, sort = TRUE)

# for (each in twitter_data_final$V4){
#   obama_count <- 0
#   twitter_data_final$obama_tweets = str_count(each, "Obama")

# }
# length(grep("Obama", obama_data_final$V4))
# obama_count <- str_count(twitter_data_final$V4, "Obama")
# hillary_count <- str_count(twitter_data_final$V4, "Hillary Clinton")
# sum(hillary_count)


# sum(obama_count)
# distinct(obama_count)
# 
# obama_count <- 0
# for (each in twitter_data_final$V4){
#   obama_count <- 0
#   twitter_data_final$obama_tweets = obama_count + sum(str_count(each, "Obama"))
# }
# obama_count




# hillary_count <- 0
# for (each in twitter_data_final$V4){
#   hillary_count = hillary_count + sum(str_count(each, "Hillary Clinton"))
# }
# hillary_count
# 
# hillary_count <- 0
# for (each in twitter_data_final$V4){
#   hillary_count = hillary_count + sum(str_count(each, "Hillary Clinton"))
# }
# hillary_count
# 
# twitter_data_final$V3
# twitter_data_final$V3 <- strptime(twitter_data_final[]$V3, format = "%a %b %e %H:%M:%S %z %Y")
# typeof(twitter_data$V3[1])



# time_obama <- NULL
# for (each in twitter_data_final$V4){
#   time_obama <- c(time_obama, twitter_data_final[as.logical(str_count(each, "Obama")),]$V3)
# }
# time_obama <- strptime(time_obama, format = "%a %b %e %H:%M:%S %z %Y")
# 
# hist()


