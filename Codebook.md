# Wearable tech  

## Study Design   
Background on this study can be found [HERE]( 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

and the raw data can be downloaded [HERE](
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Code book  
## "dataset" table

#### subject (*numeric*)\
There are 30 participants(subjects) in this study. They were arbitrarily assigned to test and training datasets, but were merged for this project. The requirements did not state to retain the test and training attributes of the subjects, and that would not have been tidy. Nine subjects were in the test set (2, 4, 9, 10, 12, 13, 18, 20, and 24), and the remaining 21 are in the training set.
     
#### Activity (*character string as factor*)  
There are 6 activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

#### Watch data Sensor signals (*numeric, range -1<n<1*)
There are 66 columns of readings. These include only the mean `mean()` and standard deviation `std()` values from the original data. Full descriptions can be found in the `"README.txt"` and `"features_info.txt"` in the dataset listed above. Per the original documentation: 

>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.  

The 66 column names are:\
1. tBodyAcc_mean_X  
2. tBodyAcc_mean_Y  
3. tBodyAcc_mean_Z  
4. tBodyAcc_std_X  
5. tBodyAcc_std_Y  
6. tBodyAcc_std_Z  
7. tGravityAcc_mean_X  
8. tGravityAcc_mean_Y  
9. tGravityAcc_mean_Z  
10. tGravityAcc_std_X  
11. tGravityAcc_std_Y  
12. tGravityAcc_std_Z  
13. tBodyAccJerk_mean_X  
14. tBodyAccJerk_mean_Y  
15. tBodyAccJerk_mean_Z  
16. tBodyAccJerk_std_X  
17. tBodyAccJerk_std_Y  
18. tBodyAccJerk_std_Z  
19. tBodyGyro_mean_X  
20. tBodyGyro_mean_Y  
21. tBodyGyro_mean_Z  
22. tBodyGyro_std_X  
23. tBodyGyro_std_Y  
24. tBodyGyro_std_Z  
25. tBodyGyroJerk_mean_X  
26. tBodyGyroJerk_mean_Y  
27. tBodyGyroJerk_mean_Z  
28. tBodyGyroJerk_std_X  
29. tBodyGyroJerk_std_Y  
30. tBodyGyroJerk_std_Z  
31. tBodyAccMag_mean  
32. tBodyAccMag_std  
33. tGravityAccMag_mean  
34. tGravityAccMag_std  
35. tBodyAccJerkMag_mean  
36. tBodyAccJerkMag_std  
37. tBodyGyroMag_mean  
38. tBodyGyroMag_std  
39. tBodyGyroJerkMag_mean  
40. tBodyGyroJerkMag_std  
41. fBodyAcc_mean_X  
42. fBodyAcc_mean_Y  
43. fBodyAcc_mean_Z  
44. fBodyAcc_std_X  
45. fBodyAcc_std_Y  
46. fBodyAcc_std_Z  
47. fBodyAccJerk_mean_X  
48. fBodyAccJerk_mean_Y  
49. fBodyAccJerk_mean_Z  
50. fBodyAccJerk_std_X  
51. fBodyAccJerk_std_Y  
52. fBodyAccJerk_std_Z  
53. fBodyGyro_mean_X  
54. fBodyGyro_mean_Y  
55. fBodyGyro_mean_Z  
56. fBodyGyro_std_X  
57. fBodyGyro_std_Y  
58. fBodyGyro_std_Z  
59. fBodyAccMag_mean  
60. fBodyAccMag_std  
61. fBodyBodyAccJerkMag_mean  
62. fBodyBodyAccJerkMag_std  
63. fBodyBodyGyroMag_mean  
64. fBodyBodyGyroMag_std  
65. fBodyBodyGyroJerkMag_mean  
66. fBodyBodyGyroJerkMag_std  





## "table5" table
This table provides a summary of the sensor signals, averaged over both subject and activity.  \

### Subject and activity 
Subject and activity are as described above.  

### Sensor signals 
The 66 signals, as described above, are averaged over both subject and activity.  

Column names are\
1. mean(tBodyAcc_mean_X)  
2. mean(tBodyAcc_mean_Y)  
3. mean(tBodyAcc_mean_Z)  
4. mean(tBodyAcc_std_X)  
5. mean(tBodyAcc_std_Y)  
6. mean(tBodyAcc_std_Z)  
7. mean(tGravityAcc_mean_X)  
8. mean(tGravityAcc_mean_Y)  
9. mean(tGravityAcc_mean_Z)  
10. mean(tGravityAcc_std_X)  
11. mean(tGravityAcc_std_Y)  
12. mean(tGravityAcc_std_Z)  
13. mean(tBodyAccJerk_mean_X)  
14. mean(tBodyAccJerk_mean_Y)  
15. mean(tBodyAccJerk_mean_Z)  
16. mean(tBodyAccJerk_std_X)  
17. mean(tBodyAccJerk_std_Y)  
18. mean(tBodyAccJerk_std_Z)  
19. mean(tBodyGyro_mean_X)  
20. mean(tBodyGyro_mean_Y)  
21. mean(tBodyGyro_mean_Z)  
22. mean(tBodyGyro_std_X)  
23. mean(tBodyGyro_std_Y)  
24. mean(tBodyGyro_std_Z)  
25. mean(tBodyGyroJerk_mean_X)  
26. mean(tBodyGyroJerk_mean_Y)  
27. mean(tBodyGyroJerk_mean_Z)  
28. mean(tBodyGyroJerk_std_X)  
29. mean(tBodyGyroJerk_std_Y)  
30. mean(tBodyGyroJerk_std_Z)  
31. mean(tBodyAccMag_mean)  
32. mean(tBodyAccMag_std)  
33. mean(tGravityAccMag_mean)  
34. mean(tGravityAccMag_std)  
35. mean(tBodyAccJerkMag_mean)  
36. mean(tBodyAccJerkMag_std)  
37. mean(tBodyGyroMag_mean)  
38. mean(tBodyGyroMag_std)  
39. mean(tBodyGyroJerkMag_mean)  
40. mean(tBodyGyroJerkMag_std)  
41. mean(fBodyAcc_mean_X)  
42. mean(fBodyAcc_mean_Y)  
43. mean(fBodyAcc_mean_Z)  
44. mean(fBodyAcc_std_X)  
45. mean(fBodyAcc_std_Y)  
46. mean(fBodyAcc_std_Z)  
47. mean(fBodyAccJerk_mean_X)  
48. mean(fBodyAccJerk_mean_Y)  
49. mean(fBodyAccJerk_mean_Z)  
50. mean(fBodyAccJerk_std_X)  
51. mean(fBodyAccJerk_std_Y)  
52. mean(fBodyAccJerk_std_Z)  
53. mean(fBodyGyro_mean_X)  
54. mean(fBodyGyro_mean_Y)  
55. mean(fBodyGyro_mean_Z)  
56. mean(fBodyGyro_std_X)  
57. mean(fBodyGyro_std_Y)  
58. mean(fBodyGyro_std_Z)  
59. mean(fBodyAccMag_mean)  
60. mean(fBodyAccMag_std)  
61. mean(fBodyBodyAccJerkMag_mean)  
62. mean(fBodyBodyAccJerkMag_std)  
63. mean(fBodyBodyGyroMag_mean)  
64. mean(fBodyBodyGyroMag_std)  
65. mean(fBodyBodyGyroJerkMag_mean)  
66. mean(fBodyBodyGyroJerkMag_std)  



