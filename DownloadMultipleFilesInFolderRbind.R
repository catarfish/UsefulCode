### How to read in all data from a folder and/or bind multiple data frames together ###

# From https://stackoverflow.com/questions/2851327/combine-a-list-of-data-frames-into-one-data-frame-by-row
# All have the same column header structure
# Datatest is the name of the folder where the files are located. Might need to add more of the filepath if you are not in a project.
filenames <- list.files("Datatest", pattern="*.csv", full.names=TRUE)

# read files in, they are now in a list
ldf <- lapply(filenames, read.csv)

# bind the dataframes together
newdf <- bind_rows(ldf, .id = "column_label")


###############
# if you have several different files you want to read in separately, you can rbind them by listing the data frame names below
bottom <- do.call("rbind", list(df1, df2, df3, df4))
