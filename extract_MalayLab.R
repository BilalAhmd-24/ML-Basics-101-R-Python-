print("________________________R_code_for extracting values______________")
getwd()
print("__________________Make sure your.tsv file is in the same dir__________")
#setwd("D:/Locate/your/.tsvfile/here")

print("__________________Reading the .TSV file_______________________________")
data <- read.csv("filename.tsv", sep="\t", header = TRUE)

print("_____________________Extracting last column________________________")
col<-data[,ncol(data)]

print("________________removing header____________________________________") 
names(col) <- NULL


print("______________________Sorting the last column_________________________")
last_col <- sort(col) 

print("________________Output on terminal_______________________________________")
print(last_col)
