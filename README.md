---
title: "README"
output: html_document
---

The run_analysis.R script take the Human Activity Recognition Using Smartphones Dataset.
The script has a "base_dir" that the points to the directory where the zip file was unzipped.

The output file is mean_std_averages.txt in the local project directory.

run_analysis() Actions

1. Read the training and test X (measurements), Y (activities list), subjects (test subjects)

2. Merge training and test data sets into a single data set

3. Read the "features.txt" which are the column names for the test data

4. Read the "activity_labels.txt" file to get human readable list of activites

5. Makes a list of all the column names with "mean" or "std" and the excludes any with "meanfreq"

6. Create a subset of the measurements of columns based on the list above

7. Create a matrix of where each column is the average of that variable and each row
is a subject and activity.  There are 30 subjects with 6 activites which creates 180 rows.

8. create a vectors of subjects and of activites that match each row.

9. Create a data.frame with test subjects, activites, and matrix of average measurements

10. Add column names to the data.frame composed of "subject", "activity", and column names used to subset the original data.

11. Write the data.frame to file "mean_std_averages.txt"






