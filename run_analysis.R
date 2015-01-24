#  Coursera - Getting and Cleaning Data Project
#
#  
run_analysis <- function(){
      
      #  values
      base_dir <- "C:/Users/Allen/Desktop/Data Science/Coursera Data Science/GettingCleaningData/Project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/"
      

      #  Merge training and test data sets
      
      # X Merged - the measurements
      Mrged_x <- merge_dataset( base_dir, "train/x_train.txt", "test/x_test.txt")
      
      # Y Merged - the activities for each row
      Mrged_y <- merge_dataset( base_dir, "train/Y_train.txt", "test/Y_test.txt")
            
      #  Extract mean and standard deviation measurements
      features <- read.table( paste( base_dir, "features.txt", sep =""))
      indx1 <- grepl("mean|std", features[,2])
      indx2 <- grepl("meanFreq", features[,2])
      indx <- indx1 & ! indx2
      
      X_meanStd <- Mrged_x[, indx]
      
      #  Descriptive names for activites
      #  activity_labels[,1] activity index  [,2] text name
      #  act_labs[act,2]
      act_labs <- read.table( paste( base_dir, "activity_labels.txt", sep =""))
      actl <- as.vector(act_labs[,2], mode="character")
      
      #  Data set variables descriptive labels
      featsub <- features[indx,2]     #  get the column names of means and stds
      colnames(X_meanStd) <- featsub  #  add the names to the table columns
      
      #  Create averages data set without labels
      #   compute averages - means
      #  Create a merged subject table
      
      # Test Subjects Merged 
      Sub_merged <- merge_dataset( base_dir, "train/subject_train.txt", "test/subject_test.txt")
      
      #  add activity column - will be column 2
      s1 <- cbind(Mrged_y,X_meanStd)
      
      #  add subject column as column 1
      s2 <- cbind(Sub_merged, s1)
      
      #  add names to columns
      cnames <- c("subject", "activity", colnames(X_meanStd))      
      colnames(s2) <- cnames

      sub_all <- vector(mode = "integer")
      act_all <- vector(mode = "character")
      krows <- 30 * 6
      kcols <- ncol(X_meanStd)
      ssamavg <- matrix(data = NA, nrow = krows, ncol = kcols, dimnames = NULL)
      for( sub in 1:30){
            #  get subset of data for this subject
            sa <- s2[s2$subject == sub, ]
            activities <- list()
            for( act in 1:6){
                  #  add subject and activity to list
                  sub_all <- c(sub_all, sub)

                  act_all <- c(act_all, actl[act] )
                  #  get measurements for this activity
                  sam <- sa[ sa$activity == act, ]
                  
                  #  Compute averages
                  colNum <- 1
                  for(meas in colnames(X_meanStd)){
                        
                        ssamavg[(sub-1)*6+act, colNum] <- mean(sam[,meas], na.rm = TRUE)            
                        colNum <- colNum + 1
                  }

                  
            }  # end of activities loop
      }#  end of subject loop
      #  Build final data frame
      df <- data.frame(subject = sub_all, activities = act_all, averages = ssamavg)
      colnames(df) <- cnames
      write.table(df, file="mean_std_averages.txt", row.names = FALSE)
}  #  end of run_analysis

#  merge the X_train data sets and return a single data set
merge_dataset <- function( dir, fn1, fn2){
      #  Open files
      dfn1 <- read.table(paste( dir, fn1, sep = "/"))
      
      dfn2 <- read.table(paste( dir, fn2, sep = "/"))
     
      dfn <- rbind(dfn1, dfn2)
      
      return(dfn)
      
}