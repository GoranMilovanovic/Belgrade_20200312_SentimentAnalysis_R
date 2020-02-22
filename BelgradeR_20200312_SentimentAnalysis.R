
### --- BelgradeR Meetup: Sentiment Analysis in R
### --- 2020/03/12, Startit Center, Belgrade
### --- author: Goran S. Milovanovic
### --- contact: goran.s.milovanovic@gmail.com
### --- github repo:

### --- directory tree
dataDir <- paste0(getwd(), "/_data/")
analyticsDir <- paste0(getwd(), "/_analytics/")
imgDir <- paste0(getwd(), "/_img/")

### --- Section 1. Data acquisition
# - packages
library(newsrivr)
library(ggplot2)
# - identify yourself to NEWSRIVER via {newsrivr}
creds <- readLines('creds.txt')
userAgent <- 'goran.s.milovanovic@gmail.com'
# - collect all news on Huawei, Apple, Samsung 
# - From: 2020/01/01; To: 2020/02/29
HuaweiSet <- newsrivr::get_news("Huawei", 
                                from = "2020-01-01",
                                to = "2020-02-21",
                                limit = 100,
                                language = "en",
                                api_token = creds,
                                ua = userAgent)
HuaweiSet <- newsrivr::clean_news(HuaweiSet)
write.csv(HuaweiSet, paste0(dataDir, "HuaweiSet.csv"))
AppleSet <- newsrivr::get_news("Apple",
                               from = "2020-01-01",
                               to = "2020-02-21",
                               limit = 100,
                               language = "en",
                               api_token = creds,
                               ua = userAgent)
AppleSet <- newsrivr::clean_news(AppleSet)
write.csv(AppleSet, paste0(dataDir, "AppleSet.csv"))
SamsungSet <- newsrivr::get_news("Samsung",
                                 from = "2020-01-01",
                                 to = "2020-02-21",
                                 limit = 100,
                                 language = "en",
                                 api_token = creds,
                                 ua = userAgent)
SamsungSet <- newsrivr::clean_news(SamsungSet)
write.csv(SamsungSet, paste0(dataDir, "SamsungSet.csv"))

### --- Section 2. Text pre-processing


### --- Section 3. Sentiment Analysis


### --- Section 4. Visualizations + Discussion