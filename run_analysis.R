library(reshape2)

# Es necesario poner el directorio de trabajo en la carpeta Dataset

train <- read.table("train/subject_train.txt")
test <- read.table("test/subject_test.txt")

Xtrain <- read.table("train/X_train.txt")
Xtest <- read.table("test/X_test.txt")

Ytrain <- read.table("train/y_train.txt")
Ytest <- read.table("test/y_test.txt")

names(train) <- "subjectID"
names(test) <- "subjectID"

features <- read.table("features.txt")
names(Xtrain) <- features$V2
names(Xtest) <- features$V2

names(Ytrain) <- "actividad"
names(Ytest) <- "actividad"

ctrain <- cbind(train, Ytrain, Xtrain)
ctest <- cbind(test, Ytest, Xtest)

combinado <- rbind(ctrain, ctest)

meddesvcols <- grepl("mean\\(\\)", names(combinado)) | grepl("std\\(\\)", names(combinado))
meddesvcols[1:2] <- TRUE

combinado <- combinado[, meddesvcols]

combinado$actividad <- factor(combinado$actividad, labels=c("Walking","Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"))

meltcombinado <- melt(combinado, id=c("subjectID","actividad"))

ordenado <- dcast(meltcombinado, subjectID+actividad ~ variable, mean)

write.csv(ordenado, "Ordenado.csv", row.names=FALSE)