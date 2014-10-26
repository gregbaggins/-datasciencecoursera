

README file for:  run_analysis.R 
================================

This script loads Samsung cell phone acceleration and gyro data from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


The data are provided in a number of text files.
The column labels are provided in a file named "features.txt"
These are read into an R list.


The training and test data are provided in files "x_train.txt"
and "x_test.txt."


These data are imported into data frames and the column names are added
using the colnames() function.


next, training data and the test data are merged usign the rbind() fundtion.


The column names containing the strings mean, Mean, std or Std are then
identified using the grepl() command.  grepl() output is a logica vector.


Said logical vector is then used to copy only the desired columns from
the data frame into a new data frame called filtered_df.

filtered_df is then exported to a text file "tidyout.txt" using
function write.table().
