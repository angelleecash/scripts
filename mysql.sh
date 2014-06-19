mysql -uchenliang -pzxcvb -B --skip-column-names -e "use private_2;select subTasks from mission" | sed -e "s/\\n//g/"
