# Code Book

List of all variables, grouped by signal domain (time/frequency) and source (accelerometer/gyroscope).

## Keys
- `subject` - ID of subject performing the activity
    - `1`-`30`
- `activity` - Activity label of the activity being performed by subject
    - `WALKING`
    - `WALKING_UPSTAIRS`
    - `WALKING_DOWNSTAIRS`
    - `SITTING`
    - `STANDING`
    - `LAYING`

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
Fast Fourier Transform applied to some of the signals above.

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
