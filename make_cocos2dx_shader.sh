#echo "processing file $1"
dos2unix $1 0>/dev/null 1>/dev/null 2>/dev/null
cat $1 | awk -F '\n' 'BEGIN{printf("%s","\"\t\\n\\\n")}{printf("%s%s\n", $1,"\t\\n\\");}END{print "\";"}'

