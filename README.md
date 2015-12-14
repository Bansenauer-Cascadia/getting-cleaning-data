# Getting &amp; Cleaning Data Project
## Coursera Data Science course work

The goal of the project is to produce a tidy data set containing the average values of certain measurements (mean and standard dev) based on the subject and the subject's activity during those measurements. Each observation corresponds with a particular *subject* and *activity number* as designated by the corresponding row in the subject.txt and y.txt files respectively. The names of the activities are indexed in the activity_labels.txt file. The project uses the R libraries: data.table, plyr, and dplyr.

 1. The initial data (as loaded) are given in two parts (training data and test data) which are combined into a single data set for this project. The rbind() method is used to append test data to training data in order to create one set.

 2. I use the setname() function with the list of data features (from features.txt) to label each variable (column)

 3. The dplyr select() function allows me to extract the data variables that contain the words "mean" and "std"

 4. Before creating the output data set, I first create a list of the activity names (instead of the indexes) for each observation in the data set by joining the list of activity number with the indexed set of activity names. The plyr join() function allows me to do this while preserving the order of the original activity number list (y.txt)
 5. I then extend the original data variables to include the subject (number) and the activity (name) using the data.table operation for adding columns
 6. I compose the final tidy data set using dplyr methods to group (by subject and activity name), summarise (as a mean value), and arrange (by subject and activity). The dplyr piping syntax (%>%) makes this sequential process quite clear. 
 7. Lastly, I remove and uneccesary data tables and display the final data set.
