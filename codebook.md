{\rtf1\ansi\ansicpg936\cocoartf1343\cocoasubrtf160
{\fonttbl\f0\fnil\fcharset134 STHeitiSC-Light;}
{\colortbl;\red255\green255\blue255;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10380\viewh7200\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural

\f0\b\fs26 \cf0 The script conducts jobs as following:
\b0\fs24 \
\
1. read the files in folder \'a1\'b0UCI HAR Dataset/test\'a1\'b1using lapply and put the 3 data frame into list1\
\
2. read the files in folder \'a1\'b0UCI HAR Dataset/train\'a1\'b1using lapply and put the 3 data frame into list2\
\
3. load the labels from activity_labels.txt and subject_text/train/txt/\
\
4. mutate the data frames of list1 and list2 together\
\
5. put the labels into column names of the mutated data frame\
\
6. extract the measurement on mean, both test data and train data, save into separated variables as result_test1 and result_train1\
\
7. extract the measurement on standard deviation, both test data and train data, save into separated variables as result_test2 and result_train2\
\
8.  combine measurement on mean and Std together into result_test3 and result_train3\
\
9. drop the measurement on meadFreq, saved into result_test4 and result_train4\
\
10. merge train and test data, saved into result\
\
11. replace the descriptive labels\
\
12. write the data frame into .txt \
\
}