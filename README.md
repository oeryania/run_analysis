# Human Activity Recognition Using Smartphones

### Source
https://archive.ics.uci.edu/dataset/240/human+activity+recognition+using+smartphones

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

### Variables

More information about the variables is provided in the `code_book`.
