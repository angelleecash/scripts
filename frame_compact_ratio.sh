
for i in `seq 188 480`
do
	grep bmw a | grep $i | awk -v i=$i 'BEGIN{last="fuckme"}{if($4!=last){c++;last=$4;}; tc++}END{printf("%d c=%d tc=%d %0.3f\n", i, c, tc, c*1.0/tc);}' 
done
