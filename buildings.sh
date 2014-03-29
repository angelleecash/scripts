file=$1
kk=${file##*美术资源//建筑/}
bn=${file##*/}
dn=`dirname "$kk"`

output=./buildings/$dn

if [ ! -d $output ];
then
	mkdir -p "$output"
fi

j="$output/$bn"
cp "$file" "$j"
