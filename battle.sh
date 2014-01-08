
function plot()
{
	echo "ploting with data file $1"
	recordCount=`awk '{kkk+=1}END{print kkk}' $1`
	xFrom=`head -n 1 $1|cut -d " " -f1`
	xTo=`tail -n 1 $1|cut -d " " -f1`
	outputFile=\'$1.png\'
	echo "recordCount=$recordCount"
	echo "xFrom=$xFrom"
	echo "xTo=$xTo"
	echo "outputFile=$outputFile"
	gnuplot -e "dataFile='$1'" -e "recordCount=$recordCount" -e "xFrom=$xFrom" -e "xTo=$xTo" -e "outputFile=$outputFile" battle.pconf
	open $1.png

}
#print "ploting with ",dataFile," with record ",recordCount," x from ", xFrom, " to ", xTo, " output to", outputFile

#cat l.log | grep "fk ck" > battle.log && plot battle.log
#cat l.log | grep "fk ak" > battle_a.log && plot battle_a.log
#cat l.log | grep "fk bk" > battle_b.log && plot battle_b.log

plot $1
