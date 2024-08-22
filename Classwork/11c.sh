file_name=$1

if [ -f $file_name ];then
	mod_date=$(stat -c %y $file_name | cut -d " " -f 1)
	mod_time=$(stat -c %y $file_name | cut -d " " -f 2 | cut -d "." -f 1)
	echo "Yay!! File exists.."
	echo "The last modified date of the file is: $mod_date"
	echo "The last modified time of the file is: $mod_time"
else
	echo "Opps!! File not found.."
fi
