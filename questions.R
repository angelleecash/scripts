review <- read.table("~/r")
attach(review)

questionIds <- unique(V2)
accuracy <- list()
for(questionId in questionIds)
{
	totalCount <- length(which(V2 == questionId))
	correctCount <- length(which(V2 == questionId & V3 == 1))
	#cat(sprintf("%d %.2f (%d/%d)\n", questionId, correctCount/totalCount,correctCount,totalCount))
	#accuracy[questionId] <- correctCount/totalCount # this is a list operation
	accuracy <- c(accuracy, correctCount/totalCount)
	#cat(sprintf("%d %.2f (%d/%d)\n", length(list))
}
detach(review)

df <- data.frame(qid=questionIds, acc=unlist(accuracy))

#hard ones 
#ltp2 <- df[which(df$acc < 0.4), ]
#barplot(ltp2$acc, names.arg=ltp2$qid, main="正确率小于40%的题目")

#xLabels <- lapply(ltp2$acc, function(x) sprintf("%.0f%%",x*100))
#hist(dat, xaxt='n')

#accu <- seq(0,1, 0.2)
hist(df$acc, main="题目正确率的分布", family="FangSong_GB2312", xlab="正确率", ylab="题目数量")
#axis(side=1, at=accu, labels=lapply(accu, function(x) sprintf("%.0f%%",x*100))

#x11()            # this has aliases on different OSs

#easy ones
#gtp8 <- df[which(df$acc > 0.9), ]
#barplot(gtp8$acc, names.arg=gtp8$qid)

#output <- matrix(unlist(accuracy), ncol = 1, byrow = TRUE)
#print(output)
#barplot(accuracy)#q()