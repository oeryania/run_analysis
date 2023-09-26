# Human Activity Recognition Using Smartphones

### Study Design
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity.

Full Study: https://archive.ics.uci.edu/dataset/240/human+activity+recognition+using+smartphones

### Record Summary
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### Data Source
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Files

- `data`  - folder containing experiment data downloaded from source
- `output/data_tidy.txt` - experiment data summarized into one row per subject per activity
- `run_analysis.R` - script that transforms `data` into `data_tidy.txt`

### Recipe

- Read files from `data` folder
- Combine all rows in `train` and `test` files
- Combine `subject` column with `y` (activity id) column with `x`  (measurement) columns
- Replace `y` with `activity_labels`
- Summarize the data into one row per subject and activity by taking the average of the measurements
- Tidy the measurement column names:
    - remove non-alpha-numeric characters (parenthesis)
    - use underscores to separate words
    - lower the case
    - spell out abbreviations (`acc` -> `acceleration`, `gyro` -> `angular_velocity`, `mag` -> `magnitude`)
    - remove redundant words (`body_jerk` -> `jerk`, `body_body` -> `body`)
- Save result to `data_tidy.txt` (and `data_tidy.csv` for convenience)

### Code Book

See `code_book`.
