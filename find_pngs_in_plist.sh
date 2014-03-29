cat $1/*.plist | grep png | cut -d ">" -f2 | cut -d "<" -f1 

