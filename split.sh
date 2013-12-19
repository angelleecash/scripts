outputDir=/tmp/frames
rm -rf $outputDir
mkdir $outputDir

logFile=$1

#else
#		{
#			fn = "/tmp/frames/" $3
#			print $5 " " $6 >> fn
#			if(lastid != $3 && lastid != -1)
#			{
#				close("/tmp/frames/" lastid)
#			}
#			lastid = $3
#		}

awk 'BEGIN{
	ffn="/tmp/frames/all.txt";
	lastid=-1
}{
	if($2=="fk")
	{
		if($4=="t1")
		{
			print $3 " " $5 " " $6 >> ffn
		}
		
	}
}END{
	if(lastid!=-1)
	{	
		close("/tmp/frames/" lastid)
	}
}' $logFile
#
#printf("%s %s %s",$3,$5,$6) >> fn
frameCount=`wc -l /tmp/frames/all.txt | cut -d " " -f4`
#echo $frameCount
gnuplot -e "set term png size 1024,768;set output 'a.png'; set grid;plot [0:$frameCount][0:50] '/tmp/frames/all.txt' using 1:2 with boxes" && open a.png
