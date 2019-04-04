Election_2014 <- read.csv(url("https://electionresults.sos.state.mn.us/Results/MediaResult/20?mediafileid=38"),
                          sep=";", header=FALSE)
View(Election_2014[1:100,])            
Election_2014 <- Election_2014[ ,-c(3,6,7, 9,10, 12,13) ]
colnames(Election_2014) <- c("State", "CountyID", "OfficeID", "OfficeName", "CandidateName", 
                             "Party", "NumberVotes", "PercentVotes", "TotalVotes")
max(Election_2014[,2])
write.csv(Election_2014, "Election_2014.csv")
# https://electionresults.sos.state.mn.us/Select/DownloadFileFormats/20

Election_2010 <- read.csv(url("https://electionresults.sos.state.mn.us/Results/MediaResult/69?mediafileid=38"),
                          sep=";", header=FALSE)
View(Election_2010[1:100,])            
Election_2010 <- Election_2010[ ,-c(3,6,7, 9,10, 12,13) ]
colnames(Election_2010) <- c("State", "CountyID", "OfficeID", "OfficeName", "CandidateName", 
                             "Party", "NumberVotes", "PercentVotes", "TotalVotes")
max(Election_2010[,2])
write.csv(Election_2010, "Election_2010.csv")

# Election 2006
Election_2006 <- read.csv(url("https://electionresults.sos.state.mn.us/Results/MediaResult/55?mediafileid=38"),
                          sep=";", header=FALSE)
View(Election_2006[1:100,])            
Election_2006 <- Election_2006[ ,-c(3,6,7, 9,10, 12,13) ]
colnames(Election_2006) <- c("State", "CountyID", "OfficeID", "OfficeName", "CandidateName", 
                             "Party", "NumberVotes", "PercentVotes", "TotalVotes")
max(Election_2006[,2])
write.csv(Election_2006, "Election_2006.csv")

# Election 2002
# Senate
Election_2002_Senate <- read.csv(url("https://electionresults.sos.state.mn.us/Results/MediaResult/32?mediafileid=27"),
                          sep=";", header=FALSE)
View(Election_2002_Senate[1:100,])            
Election_2002_Senate <- Election_2002_Senate[ ,-c(3,6,7, 9,10, 12,13) ]
colnames(Election_2002_Senate) <- c("State", "CountyID", "OfficeID", "OfficeName", "CandidateName", 
                             "Party", "NumberVotes", "PercentVotes", "TotalVotes")
max(Election_2002_Senate[,2])
write.csv(Election_2002_Senate, "Election_2002_Senate.csv")

# House_District
Election_2002_House_District <- read.csv(url("https://electionresults.sos.state.mn.us/Results/MediaResult/32?mediafileid=24"),
                                 sep=";", header=FALSE)
View(Election_2002_House_District[1:100,])            
Election_2002_House_District <- Election_2002_House_District[ ,-c(2,3,4,7,9,10,12,13) ]
colnames(Election_2002_House_District) <- c("State", "OfficeName", "DistrictID", "CandidateName", 
                                    "Party", "NumberVotes", "PercentVotes", "TotalVotes")
Election_2002_House_District <- Election_2002_House_District[1:29,]
write.csv(Election_2002_House_District, "Election_2002_House_District.csv")

# House_Precint
Election_2002_House_Precinct <- read.csv(url("https://electionresults.sos.state.mn.us/Results/MediaResult/32?mediafileid=29"),
                                         sep=";", header=FALSE)
View(Election_2002_House_Precinct[1:100,])
max(Election_2002_House_Precinct$PrecinctID, na.rm=TRUE)
Election_2002_House_Precinct <- Election_2002_House_Precinct[ ,-c(4, 7, 9, 10, 12, 13) ]
colnames(Election_2002_House_Precinct) <- c("State", "CountyID", "PrecinctID", 
"OfficeName", "DistrictID", "CandidateName","Party", "NumberVotes", "PercentVotes", "TotalVotes")
Election_2002_House_Precinct <- Election_2002_House_Precinct[1:29,]
write.csv(Election_2002_House_Precinct, "Election_2002_House_Precinct.csv")

# Election_2002_Governor
Election_2002_Governor <- read.csv(url("https://electionresults.sos.state.mn.us/Results/MediaResult/32?mediafileid=100"),
                                         sep=";", header=FALSE)
View(Election_2002_Governor[1:100,])
max(Election_2002_Governor$V4, na.rm=TRUE)
Election_2002_Governor <- Election_2002_Governor[ ,-c(3,4, 6,7, 9, 10, 12,13) ]
colnames(Election_2002_Governor) <- c("State", "CountyID", "OfficeName", 
                                      "CandidateName","Party", "NumberVotes", "PercentVotes", "TotalVotes")
write.csv(Election_2002_Governor, "Election_2002_Governor.csv")

