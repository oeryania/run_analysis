library(dplyr)

        x_train <- read.fwf("./data/train/X_train.txt", widths = rep(16, 561))
         x_test <- read.fwf("./data/test/X_test.txt",   widths = rep(16, 561))
        y_train <- read.table("./data/train/y_train.txt")
         y_test <- read.table("./data/test/y_test.txt")
  subject_train <- read.table("./data/subject_train.txt")
   subject_test <- read.table("./data/test/subject_test.txt")
       features <- read.table("./data/features.txt")
activity_labels <- read.table("./data/activity_labels.txt")

# X columns | merge train & test rows + use descriptive feature names + extract mean & std
measurements <- rbind(x_train, x_test)
names(measurements) <- features$V2
measurements <- measurements %>% select(matches("-mean\\(\\)|-std\\(\\)"))

# Y column | merge train & test rows + use descriptive activity labels
activity <- rbind(y_train, y_test)
activity_labels <- split(activity_labels$V2, activity_labels$V1)
activity <- activity %>% unlist %>% lapply(function(e){activity_labels[[e]]}) %>% unlist(use.names = FALSE)

# SUBJECT column | merge train & test rows
subject <- rbind(subject_train, subject_test) %>% unlist(use.names = FALSE)

# FULL DATA | merge all columns
data_full <- cbind(subject, activity, measurements)

# TIDY DATA | summarize data by activity's average measurements for each subject
data_tidy <- data_full %>% group_by(subject, activity) %>% summarize_all(mean)

# clean variable names
names(data_tidy) <- names(data_full) %>%
    gsub(x=., "(-)std\\(\\)", "\\1standard-deviation\\2") %>%
    gsub(x=., "\\(|\\)", "") %>%
    gsub(x=., "^t([A-Z])", "\\1") %>%
    gsub(x=., "^f([A-Z])", "fft-\\1") %>%
    gsub(x=., "([-][X|Y|Z])", "\\1-axis") %>%
    gsub(x=., "Acc", "Acceleration") %>%
    gsub(x=., "Gyro", "AngularVelocity") %>%
    gsub(x=., "([a-z])([A-Z])", "\\1_\\2") %>%
    gsub(x=., "-", "_") %>%
    tolower


# save tidy data to file
write.table(data_tidy, "./data/data_tidy.txt", row.names = FALSE)

write.csv(names(data_tidy), "./data/data_tidy_variables.csv", row.names = FALSE, quote = FALSE)
