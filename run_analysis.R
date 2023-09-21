library(dplyr)

        x_train <- read.fwf("./data/train/X_train.txt", widths = rep(16, 561))
         x_test <- read.fwf("./data/test/X_test.txt",   widths = rep(16, 561))
        y_train <- read.table("./data/train/y_train.txt")
         y_test <- read.table("./data/test/y_test.txt")
  subject_train <- read.table("./data/subject_train.txt")
   subject_test <- read.table("./data/test/subject_test.txt")
       features <- read.table("./data/features.txt")
activity_labels <- read.table("./data/activity_labels.txt")

x <- rbind(x_train, x_test)
names(x) <- features$V2

x <- select(x, matches("-mean\\(\\)|-std\\(\\)"))

y <- rbind(y_train, y_test)
y <- lapply(y, function(x){activity_labels$V2[x]}) %>% unlist

yx <- cbind(activity = y, x)
rownames(yx) <- NULL

s <- rbind(subject_train, subject_test)
syx <- cbind(s, yx)

syx <- rename(syx, subject = V1)
syx_avg <- syx %>% group_by(subject, activity) %>% summarize_all(mean)