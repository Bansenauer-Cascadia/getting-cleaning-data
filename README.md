# Getting &amp; Cleaning Data Project
## Coursera Data Science course work

The goal of the project is to produce a tidy data set containing the average values of certain measurements (mean and standard dev) based on individual subjects' activity during those measurements. Each observation in the original data sets (X_train.txt, X_test.txt) corresponds with a particular *subject* and *activity number* as designated by the corresponding row in the subject.txt and y.txt files respectively.

The names of the activities are indexed in the activity_labels.txt file. The names of the variables for each data set are indexed in the [features.txt](https://github.com/Bansenauer-Cascadia/getting-cleaning-data/blob/master/data/features.txt) file. (NB: Several feature names in the original data set include a duplication mistake).

See the [Code book](https://github.com/Bansenauer-Cascadia/getting-cleaning-data/blob/master/CodeBook.md) for more details on original data set and names and units for the variables.

### Instruction List description

#### Text Editor
 0. Correct a duplication mistake in the feature.txt file on line numbers 516-554. Using a global search and replace function in a standard text editor, remove the "BodyBody" repetition in 39 feature names, e.g., line 516, *fBodyBodyAccJerkMag-mean()* is corrected to *fBodyAccJerkMag-mean()*

#### R-programming Script ([run_analysis.R](https://github.com/Bansenauer-Cascadia/getting-cleaning-data/blob/master/run_analysis.R))
 1. The initial data (X_train.txt, X_test.txt) are loaded in two parts (training data and test data) which are combined into a single data set for this project. The **rbind()** method is used to append the test observations to the end of the training observations in order to create one set of 10299 observations.

 2. Use the **setname()** function with the list of data features (from the corrected [features.txt](https://github.com/Bansenauer-Cascadia/getting-cleaning-data/blob/master/data/features.txt) file) to label each variable (column)

 3. With the *dplyr* **select()** function, extract the data variables that contain the words "mean" and "std"

 4. Create a list of the activity names (instead of the indexes) for each observation in the data set by joining the list of activity number with the indexed set of activity names. Use the *plyr* **join()** function to do this while preserving the order of the original activity number list (y.txt)

 5. Extend the original data variables to include the subject (number) and the activity (name) using the *data.table* subset operation for adding columns

 6. Compose the final tidy data set using *dplyr* methods to **group** (by subject and activity name), **summarise** (as a mean value), and **arrange** (by subject and activity). The *dplyr* piping syntax (%>%) makes this a simple sequential process.

 7. Lastly, remove and unnecessary data tables and display the final data set.

 The project uses the R libraries: *data.table*, *plyr*, and *dplyr*.
