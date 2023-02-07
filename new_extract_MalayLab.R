
print("__________________R_code_for extracting values________________________")

print("__________________Make sure your.tsv file is in the same dir__________")
#setwd("D:/Locate/your/.tsvfile/here")

print("__________________Reading the .TSV file from CMD______________________")
args <- commandArgs(TRUE)
batch_args <- read.csv(args[1], sep="\t", header = TRUE)


print("__________________Extracting last column______________________________")
col<-batch_args[,ncol(batch_args)]

print("__________________Removing header_____________________________________") 
names(col) <- NULL


print("__________________Sorting the last column_____________________________")
last_col <- sort(col) 

print("__________________Output on terminal__________________________________")
print(last_col)
