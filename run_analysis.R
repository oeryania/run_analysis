library(dplyr)

        x_train <- read.fwf("./data/train/X_train.txt", widths = rep(16, 561))
         x_test <- read.fwf("./data/test/X_test.txt",   widths = rep(16, 561))
        y_train <- read.table("./data/train/y_train.txt")
         y_test <- read.table("./data/test/y_test.txt")
  subject_train <- read.table("./data/train/subject_train.txt")
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
names(data_tidy) <- names(data_tidy) %>%
    gsub(x=., "BodyBody", "Body") %>%               # remove duplicate in name
    gsub(x=., "-", "_") %>%                         # separate words with underscores
    gsub(x=., "([a-z])([A-Z])", "\\1_\\2") %>%      # separate words with underscores
    tolower %>%                                     # convert to lower case
    gsub(x=., "\\(\\)", "") %>%                     # remove parenthesis
    gsub(x=., "(t|f)_(.+)_(acc|gyro)_", "\\1_\\3_\\2_") %>% # put instrument at the beginning
    gsub(x=., "_acc_", "_acceleration_") %>%        # spell out abbreviation
    gsub(x=., "_gyro_", "_angular_velocity_") %>%   # spell out abbreviation
    gsub(x=., "_mag_", "_magnitude_") %>%           # spell out abbreviation
    gsub(x=., "_body_jerk_", "_jerk_")              # simplify naming (one word per qualifier)


# optional: generate mardkown for variable names (make bullets and surround with backticks)
# names(data_tidy) %>% gsub(x=., "^(.*)$", "- `\\1`") %>% write.table("./output/data_tidy_variables.txt", row.names = FALSE, quote = FALSE)

# save tidy data to file
write.table(data_tidy, "./output/data_tidy.txt", row.names = FALSE)
write.csv(data_tidy, "./output/data_tidy.csv", row.names = FALSE)