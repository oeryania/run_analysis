# Human Activity Recognition Using Smartphones

# Study Design
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity.

Source: https://archive.ics.uci.edu/dataset/240/human+activity+recognition+using+smartphones

# Record Summary
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

# Code Book

List of all variables, indicated in a code block like this:  `variable`.

Grouped by signal domain (time/frequency) and source (accelerometer/gyroscope).

## Keys
- `subject` - ID of subject performing the activity
- `activity` - One of the six activities that is being performed (see Study Design)

## Time Domain Signals
### From Accelerometer
#### Body
- `t_acceleration_body_mean_x`
- `t_acceleration_body_mean_y`
- `t_acceleration_body_mean_z`
- `t_acceleration_body_std_x`
- `t_acceleration_body_std_y`
- `t_acceleration_body_std_z`

#### Gravity
- `t_acceleration_gravity_mean_x`
- `t_acceleration_gravity_mean_y`
- `t_acceleration_gravity_mean_z`
- `t_acceleration_gravity_std_x`
- `t_acceleration_gravity_std_y`
- `t_acceleration_gravity_std_z`

#### Jerk
- `t_acceleration_jerk_mean_x`
- `t_acceleration_jerk_mean_y`
- `t_acceleration_jerk_mean_z`
- `t_acceleration_jerk_std_x`
- `t_acceleration_jerk_std_y`
- `t_acceleration_jerk_std_z`

### From Gyroscope
#### Body
- `t_angular_velocity_body_mean_x`
- `t_angular_velocity_body_mean_y`
- `t_angular_velocity_body_mean_z`
- `t_angular_velocity_body_std_x`
- `t_angular_velocity_body_std_y`
- `t_angular_velocity_body_std_z`

#### Jerk
- `t_angular_velocity_jerk_mean_x`
- `t_angular_velocity_jerk_mean_y`
- `t_angular_velocity_jerk_mean_z`
- `t_angular_velocity_jerk_std_x`
- `t_angular_velocity_jerk_std_y`
- `t_angular_velocity_jerk_std_z`

### Magnitude
- `t_acceleration_body_magnitude_mean`
- `t_acceleration_body_magnitude_std`
- `t_acceleration_gravity_magnitude_mean`
- `t_acceleration_gravity_magnitude_std`
- `t_acceleration_jerk_magnitude_mean`
- `t_acceleration_jerk_magnitude_std`
- `t_angular_velocity_body_magnitude_mean`
- `t_angular_velocity_body_magnitude_std`
- `t_angular_velocity_jerk_magnitude_mean`
- `t_angular_velocity_jerk_magnitude_std`

## Frequency Domain Signals
### From Accelerometer
#### Body
- `f_acceleration_body_mean_x`
- `f_acceleration_body_mean_y`
- `f_acceleration_body_mean_z`
- `f_acceleration_body_std_x`
- `f_acceleration_body_std_y`
- `f_acceleration_body_std_z`

#### Jerk
- `f_acceleration_jerk_mean_x`
- `f_acceleration_jerk_mean_y`
- `f_acceleration_jerk_mean_z`
- `f_acceleration_jerk_std_x`
- `f_acceleration_jerk_std_y`
- `f_acceleration_jerk_std_z`

### From Gyroscope
- `f_angular_velocity_body_mean_x`
- `f_angular_velocity_body_mean_y`
- `f_angular_velocity_body_mean_z`
- `f_angular_velocity_body_std_x`
- `f_angular_velocity_body_std_y`
- `f_angular_velocity_body_std_z`

### Magnitude
- `f_acceleration_body_magnitude_mean`
- `f_acceleration_body_magnitude_std`
- `f_acceleration_jerk_magnitude_mean`
- `f_acceleration_jerk_magnitude_std`
- `f_angular_velocity_body_magnitude_mean`
- `f_angular_velocity_body_magnitude_std`
- `f_angular_velocity_jerk_magnitude_mean`
- `f_angular_velocity_jerk_magnitude_std`
