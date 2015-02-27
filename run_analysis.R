run<-function()
{
     
     #get test data
     filetrack<-list.files("UCI HAR Dataset/test",full.names=TRUE)
     list1<-lapply(filetrack,function(filetrack){read.table(filetrack)} )
                     
       
     #get train data
     filetrack<-list.files("UCI HAR Dataset/train",full.names=TRUE)
     list2<-lapply(filetrack,function(filetrack){read.table(filetrack)} )
     
     #load the feature labels and activity labels     
     activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt")
     colname<-read.table("UCI HAR Dataset/features.txt")
    
     #put colname into dataframe
     result_test<-data.frame(list1)
     result_train<-data.frame(list2)
     colnames(result_test)<-c("Subject",as.character(colname[,2]),"Test_labels")
     colnames(result_train)<-c("Subject",as.character(colname[,2]),"Train_labels")
     
     
     #extract the measurement on mean
     result_test1<-result_test[,grep("mean",colnames(result_test))]
     result_train1<-result_train[,grep("mean",colnames(result_train))]
     
     #extract the measurement on standard deviation
     result_test2<-result_test[,grep("std",colnames(result_test))]
     result_train2<-result_train[,grep("std",colnames(result_train))]  

     
     #put data on mean and std together
     result_test3<-data.frame("Subject"=result_test[,1],"label"=result_test[,563],result_test1,result_test2)
     result_train3<-data.frame("Subject"=result_train[,1],"label"=result_train[,563],result_train1,result_train2)
     
     #drop col with name of meanFreq
     result_test4<-result_test3[,-grep("meanFreq",colnames(result_test3))]
     result_train4<-result_train3[,-grep("meanFreq",colnames(result_train3))] 
     
     
     #merge train and test data set
     result<-merge(result_test4,result_train4,all=TRUE)
     
     
     
     #replace the decriptive names
     result[,2]<-as.factor(result[,2])
     result[,2]<-revalue(result[,2],c("1"="WALKING","2"="WALKING_UPSTAIRS","3"="WALKING_DOWNSTAIRS","4"="SITTING","5"="STANDING","6"="LAYING"))
     write.table(result,"Project-course2.txt",col.names=FALSE)
     }
     