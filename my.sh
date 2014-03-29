file=$1
kk=${file##*美术资源//地面兵种/}
#echo $kk
bn=${file##*/}
#echo $bn
dn=`dirname "$kk"`
#echo $dn
mkdir "./kk/$dn" 1>/dev/null 2>/dev/null
#echo "copying from " $file 
#echo "./kk/$dn/$bn"
#echo $file " to " "./kk/$dn/$bn"
j="./kk/$dn/$bn"
#j="${j/ /\\ }"
#echo $j
cp "$file" "$j"
