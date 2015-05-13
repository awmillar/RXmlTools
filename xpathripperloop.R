setwd("")	#put your root directory for writing files here
TOPL<- c("") 		#insert name of root xml here
L2<- c(NA)
L3<- c(NA)
L4<- c(NA)
L5<- c(NA)
L6<- c(NA)
VAL<- c(NA)
framey<- data.frame(TOPL,L2,L3,L4,L5,L6,VAL, stringsAsFactors=FALSE)
totalcount<- 2
L2ct<- 1
while (L2ct <= length(gog))
{
	L2len<-length(gog[[L2ct]])
	if (L2len ==1 & length(names(gog[[L2ct]]))>0) 
	{	
		framey[totalcount,1]<-TOPL
		framey[totalcount,2]<- names(gog[L2ct])
		framey[totalcount,7]<-  c("")
		totalcount<- totalcount+1
		framey[totalcount,1]<-TOPL
		framey[totalcount,2]<- names(gog[L2ct])
		framey[totalcount,3]<- names(gog[[L2ct]])
		framey[totalcount,7]<-  as.character(gog[[L2ct]])
		totalcount<- totalcount+1
		L2ct<- L2ct+1
	}
	else if (L2len ==1 & length(names(gog[[L2ct]]))==0 ) 
	{
		framey[totalcount,1]<-TOPL
		framey[totalcount,2]<- names(gog[L2ct])
		framey[totalcount,7]<- as.character(gog[[L2ct]])
		totalcount<- totalcount+1
		L2ct<- L2ct+1
	}
	else 
	{
		framey[totalcount,1]<-TOPL
		framey[totalcount,2]<- names(gog[L2ct])
		framey[totalcount,7]<-  c("")
		totalcount<- totalcount+1
		L3ct<-1
		while (L3ct <= L2len)
		{
			L3len<- length(gog[[L2ct]][[L3ct]])
			if(L3len ==1 & length(names(gog[[L2ct]][[L3ct]]))>0) 
			{
				framey[totalcount,1]<-TOPL
				framey[totalcount,2]<- names(gog[L2ct])
				framey[totalcount,3]<- names(gog[[L2ct]][L3ct])
				framey[totalcount,7]<-   c("")
				totalcount<- totalcount+1
				framey[totalcount,1]<-TOPL
				framey[totalcount,2]<- names(gog[L2ct])
				framey[totalcount,3]<- names(gog[[L2ct]][L3ct])
				framey[totalcount,4]<- names(gog[[L2ct]][[L3ct]])
				framey[totalcount,7]<-  as.character(gog[[L2ct]][[L3ct]])
				totalcount<- totalcount+1
				L3ct<- L3ct+1 
			}
			else if(L3len ==1 & length(names(gog[[L2ct]][[L3ct]]))==0) 
			{
				framey[totalcount,1]<-TOPL
				framey[totalcount,2]<- names(gog[L2ct])
				framey[totalcount,3]<- names(gog[[L2ct]][L3ct])
				framey[totalcount,7]<- as.character(gog[[L2ct]][[L3ct]])
				totalcount<- totalcount+1
				L3ct<- L3ct+1 
			}
			else
			{
				framey[totalcount,1]<-TOPL
				framey[totalcount,2]<- names(gog[L2ct])
				framey[totalcount,3]<-names(gog[[L2ct]][L3ct])
				framey[totalcount,7]<- c("")
				totalcount<- totalcount+1
				L4ct<- 1
				while (L4ct <= L3len)
				{
				L4len<- length(gog[[L2ct]][[L3ct]][[L4ct]])
					if (L4len ==1 & length(names(gog[[L2ct]][[L3ct]][[L4ct]]))>0)
					{
						framey[totalcount,1]<-TOPL
						framey[totalcount,2]<- names(gog[L2ct])
						framey[totalcount,3]<- names(gog[[L2ct]][L3ct])
						framey[totalcount,4]<- names(gog[[L2ct]][[L3ct]][L4ct])
						framey[totalcount,7]<-   c("")
						totalcount<- totalcount+1
						framey[totalcount,1]<-TOPL
						framey[totalcount,2]<- names(gog[L2ct])
						framey[totalcount,3]<- names(gog[[L2ct]][L3ct])
						framey[totalcount,4]<- names(gog[[L2ct]][[L3ct]][L4ct])
						framey[totalcount,5]<- names(gog[[L2ct]][[L3ct]][[L4ct]])
						framey[totalcount,7]<-  as.character(gog[[L2ct]][[L3ct]][[L4ct]])
						totalcount<- totalcount+1
						L4ct<- L4ct+1
					}
					else if (L4len ==1 & length(names(gog[[L2ct]][[L3ct]][[L4ct]]))==0)
					{
						framey[totalcount,1]<-TOPL
						framey[totalcount,2]<- names(gog[L2ct])
						framey[totalcount,3]<- names(gog[[L2ct]][L3ct])
						framey[totalcount,4]<- names(gog[[L2ct]][[L3ct]][L4ct])
						framey[totalcount,7]<- as.character(gog[[L2ct]][[L3ct]][[L4ct]])
						totalcount<- totalcount+1
						L4ct<- L4ct+1
					}
					else
					{
						framey[totalcount,1]<-TOPL
						framey[totalcount,2]<- names(gog[L2ct])
						framey[totalcount,3]<- names(gog[[L2ct]][L3ct])
						framey[totalcount,4]<- names(gog[[L2ct]][[L3ct]][L4ct])
						framey[totalcount,7]<-  c("")
						totalcount<- totalcount+1
						L5ct<- 1
						while(L5ct<= L4len)
						{
						L5len<- length(gog[[L2ct]][[L3ct]][[L4ct]][[L5ct]])
							if(L5len ==1 & length(names(gog[[L2ct]][[L3ct]][[L4ct]][[L5ct]]))>0)
							{
							framey[totalcount,1]<-TOPL
							framey[totalcount,2]<- names(gog[L2ct])
							framey[totalcount,3]<- names(gog[[L2ct]][L3ct])
							framey[totalcount,4]<- names(gog[[L2ct]][[L3ct]][L4ct])
							framey[totalcount,5]<- names(gog[[L2ct]][[L3ct]][[L4ct]][L5ct])
							framey[totalcount,7]<- c("")
							totalcount<- totalcount+1
							framey[totalcount,1]<-TOPL
							framey[totalcount,2]<- names(gog[L2ct])
							framey[totalcount,3]<- names(gog[[L2ct]][L3ct])
							framey[totalcount,4]<- names(gog[[L2ct]][[L3ct]][L4ct])
							framey[totalcount,5]<- names(gog[[L2ct]][[L3ct]][[L4ct]][L5ct])
							framey[totalcount,6]<- names(gog[[L2ct]][[L3ct]][[L4ct]][[L5ct]])
							framey[totalcount,7]<- as.character(gog[[L2ct]][[L3ct]][[L4ct]][[L5ct]])
							totalcount<- totalcount+1
							L5ct<- L5ct+1
							}
							else if(L5len ==1 & length(names(gog[[L2ct]][[L3ct]][[L4ct]][[L5ct]]))==0)
							{
							framey[totalcount,1]<-TOPL
							framey[totalcount,2]<- names(gog[L2ct])
							framey[totalcount,3]<- names(gog[[L2ct]][L3ct])
							framey[totalcount,4]<- names(gog[[L2ct]][[L3ct]][L4ct])
							framey[totalcount,5]<- names(gog[[L2ct]][[L3ct]][[L4ct]][L5ct])
							framey[totalcount,7]<- as.character(gog[[L2ct]][[L3ct]][[L4ct]][[L5ct]])
							totalcount<- totalcount+1
							L5ct<- L5ct+1
							}
							else
							{	
								framey[totalcount,1]<-TOPL
								framey[totalcount,2]<- names(gog[L2ct])
								framey[totalcount,3]<- names(gog[[L2ct]][L3ct])
								framey[totalcount,4]<- names(gog[[L2ct]][[L3ct]][L4ct])
								framey[totalcount,5]<- names(gog[[L2ct]][[L3ct]][[L4ct]][L5ct])
								framey[totalcount,7]<- c("")
								totalcount<- totalcount+1
							L6ct<- 1							
							while(L6ct<=L5len)
								{
								framey[totalcount,1]<-TOPL
								framey[totalcount,2]<- names(gog[L2ct])
								framey[totalcount,3]<- names(gog[[L2ct]][L3ct])
								framey[totalcount,4]<- names(gog[[L2ct]][[L3ct]][L4ct])
								framey[totalcount,5]<- names(gog[[L2ct]][[L3ct]][[L4ct]][L5ct])
								framey[totalcount,6]<- names(gog[[L2ct]][[L3ct]][[L4ct]][[L5ct]][L6ct])
								framey[totalcount,7]<- as.character(gog[[L2ct]][[L3ct]][[L4ct]][[L5ct]][[L6ct]])
								L6ct<- L6ct+1
								totalcount<- totalcount+1
								}
							L5ct<- L5ct+1
							}
						}
					L4ct<- L4ct+1
					}
				}
			L3ct<- L3ct+1
			}
		}
	L2ct<- L2ct+1
	}
}	

ElementLV<- apply(!is.na(framey[,1:6]), 1, sum)
framey<- cbind(framey,ElementLV)

golen<- as.vector(framey[,8])
golenlen<-length(golen)
highcount<- 1
toplev<-c("")
while (highcount<=golenlen)
{
col<- golen[highcount]
ele<-framey[highcount,col]
toplev[highcount]<-ele
highcount<-highcount+1
}
framey<- cbind(framey,toplev)

attcount1<- 1
attwall<- c("")
while(attcount1<=golenlen)
{
if (framey[attcount1,9]==".attrs")
	{attwall[attcount1]<-c("skip")
	attwall[attcount1+1]<-c("attr")
	attcount1<- attcount1+1}
else
	{attwall[attcount1]<-c("write")}
attcount1<- attcount1+1
}
framey<- cbind(framey,attwall)
	


suffcount<-2
suffix<- c("")
while(suffcount<=golenlen)
{
abovesf<-suffcount+1
belowsf<-suffcount-1
if (framey[suffcount,10] == "attr")
	{crnt<-framey[suffcount,8]-1}
	else
	{crnt<-framey[suffcount,8]}
down1<-framey[belowsf,8]
up1<-framey[abovesf,8]
if (is.na(up1) ==TRUE)
	{ suffix[suffcount] <- ""}
else if (up1-crnt >0)
	{ suffix[suffcount] <- ""}
else if (crnt-up1==1)
	{ suffix[suffcount]<- ") )"}
else if (crnt-up1==2)
	{ suffix[suffcount]<- ") ))"}
else if (crnt-up1==3)
	{ suffix[suffcount]<- ") )))"}
else if (crnt-up1==4)
	{ suffix[suffcount]<- ") ))))"}
else if (crnt-up1==5)
	{ suffix[suffcount]<- ") )))))"}
else 
	{suffix[suffcount]<- ")"}
suffcount<- suffcount+1
}
framey<- cbind(framey,suffix)

colname<- c("root")
colcount<-2
while(colcount<=golenlen)
{
	if(framey[colcount,10]=="skip")
	{
	colname[colcount]<-c(NA)
	colcount<- colcount+1
	}
	else
	{
	colbase<- paste(
	framey[colcount,2]
	,"/",framey[colcount,3]
	,"/",framey[colcount,4]
	,"/",framey[colcount,5]
	,"/",framey[colcount,6]
	,sep ="")
	colname[colcount]<-substr(colbase,1,nchar(colbase)-(18-(as.numeric(framey[colcount,8]))*3))
	colcount<- colcount+1 
	}
}
framey<- cbind(framey,colname)

code<- c("")
codecount<- 2
subtractcount<- 0
while (codecount<=golenlen)
{
	if(framey[codecount,10]=="attr")
	{levvs<-framey[codecount,8]-1}
	else
	{levvs<-framey[codecount,8]}
	if (levvs==2){buff<-"\t"}
	else if (levvs==3){buff<-"\t\t"}
	else if (levvs==4){buff<-"\t\t\t"}
	else if (levvs==5){buff<-"\t\t\t\t"}
	else if (levvs==6){buff<-"\t\t\t\t\t"}
	if(framey[codecount,10]=="attr")
		{code[codecount]<-paste(
			buff,",attrs = c("
			,as.character(framey[codecount,9])
			,"=as.character(ip["
			,as.character(codecount-subtractcount)
			,"])"
			,as.character(framey[codecount,11])
			, sep="")
		codecount<- codecount+1
		}	
	else if(framey[codecount,10]=="skip")
		{
		code[codecount]<-c(NA)
		codecount<- codecount+1
		subtractcount<- subtractcount+1
		}
	else if(framey[codecount,10]=="write")
		{	code[codecount]<-paste(
			buff,",newXMLNode(\""
			,as.character(framey[codecount,9])
			,"\", ip["
			,as.character(codecount-subtractcount)
			,"]"
			,as.character(framey[codecount,11])
			, sep="")
		codecount<- codecount+1
		}
}
framey<- cbind(framey,code)

write(code[!is.na(code)], paste("out/",TOPL,"_code.txt", sep=""))

colheaders<- colname[!is.na(colname)]

zorg <- as.data.frame(matrix(NA,nrow=0,ncol=length(colheaders)))
colnames(zorg) <- colheaders
zorg[1,]<- framey[,7]
write.csv(zorg,paste("out/",TOPL,"_blank.csv",sep=""), row.names=FALSE)
#names(gog)
head(framey[,c(8,10,13)], 25)
write.csv(framey, paste("out/",TOPL,"_tb.csv", sep=""))
