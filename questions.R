review <- read.table("~/r")
attach(review)

questionIds <- unique(V2)
accuracy <- list()
for(questionId in questionIds)
{
	totalCount <- length(which(V2 == questionId))
	correctCount <- length(which(V2 == questionId & V3 == 1))
	#cat(sprintf("%d %.2f (%d/%d)\n", questionId, correctCount/totalCount,correctCount,totalCount))
	#accuracy[questionId] = correctCount/totalCount # this is a list operation
	accuracy = c(accuracy, correctCount/totalCount)
	#cat(sprintf("%d %.2f (%d/%d)\n", length(list))
}
detach(review)


x11()            # this has aliases on different OSs



#output <- matrix(unlist(accuracy), ncol = 1, byrow = TRUE)
#print(output)
#barplot(accuracy)
#q()
