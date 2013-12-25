
function plot()
{
	recordCount=`wc -l $1|cut -d " " -f5`
	xFrom=`head -n 1 $1|cut -d " " -f4`
	xTo=`tail -n 1 $1|cut -d " " -f4`
	outputFile=\'$1.png\'
	echo $recordCount
	echo $xFrom
	echo $xTo
	echo $outputFile
	gnuplot -e "dataFile='$1'" -e "recordCount=$recordCount" -e "xFrom=$xFrom" -e "xTo=$xTo" -e "outputFile=$outputFile" battle.pconf
	open $1.png

}
#print "ploting with ",dataFile," with record ",recordCount," x from ", xFrom, " to ", xTo, " output to", outputFile

cat l.log | grep "fk ak" > battle.log && plot battle.log
cat l.log | grep "fk bk" > battle_a.log && plot battle_a.log
cat l.log | grep "fk ck" > battle_b.log && plot battle_b.log
