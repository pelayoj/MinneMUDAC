library(readr)
library(stringr)
library(tibble)
library(dplyr)
#library(stopwords)
library(tm)
library(SnowballC)

## ngramImport()
## arguments:
##  file -- a txt file
##  removeStopWords -- (Optional) a boolean
##  stemWords -- (Optional) a boolean
## return:
##  a vector of every word in the txt file
ngramImport <- function(file,removeStopWords=FALSE,stemWords=FALSE){
  text<-read_file(file)
  text <- iconv(text,'UTF-8',sub="") # Transform everything into plain English text
  text <- tolower(text) # To lower cases
  text <- gsub('[0-9]', '', text) # Remove numbers
  text <- gsub('[[:punct:]]','',text) # Remove punctuations
  text <- gsub('[\n\r\t]',' ',text) # Remove weird HTML syntax
  text <- strsplit(text, ' ', fixed=T)[[1]]
  if (removeStopWords) {text <- removeWords(text, stopwords("en"))}
  if (stemWords) {text <- stemDocument(text, "english")}
  text<-text[text!=""]
  return(text)
}

## ngramLocate
## arguments: 
##  text -- a vector of words
##  target -- a vector of words
## return:
##  a vector of the indicies of all words in text equal to any target word
ngramLocate <- function(text, target){
  m<-length(text)
  index<-1:m
  places<-text %in% target
  idPlaces<-index[places]
  return(idPlaces)
}

## ngramExtractSingle
## arguments:
##  index -- an integer
##  text -- a vector of words
##  size -- an integer
## return:
##  a string of all elements in text within size of index
ngramExtractSingle <- function(index, text, size=8){
  lowerBound=index-size
  #make sure lowerbound is > 0
  if (lowerBound<0){
    lowerBound <- 1
  }
  
  upperBound=index+size
  #make sure upperBound doesnt go past end of vector
  m <- length(text)
  if (upperBound > m){
    upperBound <- m
  }
  ##
  gram<-text[lowerBound:upperBound]
  gram<-paste(gram,collapse=" ")
  #targetWord<-text[index]
  #gram<-paste(text[lowerBound:upperBound])
  return(gram)#targetWord)
}

## ngramExtract
## arguments:
##  indices -- a vector of integers
##  text -- a vector of words
##  size -- an integer
## return:
##  a vector of strings which are within size of each index
ngramExtract <- function(indices, text, size){
  sapply(indices,ngramExtractSingle,text=text, size=size)
}


## ngramSingle
## arguments:
##  file -- a .txt file
##  target -- a vector of words
##  size -- an integer
##  removeStopWords -- (Optional) a boolean
##  stemWords -- (Optional) a boolean
## return:
##  a tibble 
##
ngramSingle <- function(file, target, size,
                        removeStopWords=TRUE,stemWords=TRUE){
  text <- ngramImport(file,removeStopWords=removeStopWords,
                      stemWords=stemWords)
  locs <- ngramLocate(text,target)
  grams <- ngramExtract(locs, text, size)
  fileName <- gsub(".*/PresidentialSpeeches/speeches//","",file)
  fileName <- gsub(".txt","",fileName)
  grams <- tibble(ngram=as.character(grams), file=fileName)
  grams
}


#demo on 1952_DEM_AKRON.txt
#testDoc<-ngramImport("~/PresidentialSpeeches/speeches/1952_DEM_AKRON.txt")
#testDoc

#locs<-ngramLocate(testDoc,c("dollar","money"))
#locs

#grams<-ngramExtract(locs,testDoc,4)
#grams


#ngramSingle("~/PresidentialSpeeches/speeches/1952_DEM_AKRON.txt",
#            target=c("dollar","money"),size=3,removeStopWords = TRUE)

speechNames <- list.files("~/PresidentialSpeeches/speeches/",full.names = TRUE)

## ngram
## arguments:
##  files -- a vector of names of .txt files
##  target -- a vector of words
##  size -- an integer
##  removeStopWords -- (Optional) a boolean
##  stemWords -- (Optional) a boolean
## return:
##  a tibble with one ngram per row and data on the file from which it came
ngram <- function(files, target, size,
                  removeStopWords=TRUE,stemWords=TRUE){
  gramList<-lapply(files,ngramSingle,target=target,size=size,
                   removeStopWords=removeStopWords,
                   stemWords=stemWords)
  #gramList
  bind_rows(gramList)
}

foo<-ngram(speechNames, target=c("gun","guns","weapons","nd"),size=4,
           removeStopWords=TRUE, stemWords=TRUE)

# Last transformation

foo$target <- word(foo$ngram,5)
foo$ngram <- paste(word(foo$ngram,1,4), word(foo$ngram,6,9))
View(foo)
