## CleaningDataProject
for submitting the final project for the Coursera Getting and Cleaning Data course

The main script is titled "run_analysis.R"

This script downloads data from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
then unzips the file to the working directory.

It then processes the "features.txt" file to generate descriptive column headers, and to select only those columns representing the mean and standard deviation. Note that is specifically looks for "mean()" and "std()" in the column name. There are other column names including mean and (), but not immediately adjacent. Those columns are not selected.

Next the raw data are uploaded. 
The following is executed separately for both test and training data.

The columns are either named (activity and subject) or renamed (data). The data columns are  renamed and selected based on the features described above.
The subject IDs and activity IDs are in separate files, and those are merged, via cbind, to the raw data. 

The labeled data with selected columns are then merged using rbind. Test and training data are not indicated in this file, as that was not specifically requested. The association of subjects with either test or training data is indicated in the code book.

The merged data is then updated to give the activities verbose names rather than ids. These names are defined as factors (unranked, as there is no need for levels in this dataset). This final table is named "dataset".

Finally, the raw data is transformed to a second tidy table (table5, named after the question number), which is grouped by activity and subject, providing the mean of each of the variables in the initial data set.

