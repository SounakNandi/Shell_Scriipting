user_name=$(whoami)
current_time=$(date +%T)
current_date=$(date +%D)
current_hour=$(date +%H)

echo "Hola !!"
if ((current_hour<=12));then
	echo -n "Good Morning, "
elif ((current_hour>=18));then
	echo -n "Good Night, "
else
	echo -n "Good Evening, "
fi
echo "$user_name nice to meet ya.."
echo "current_time: $current_time, current_date: $current_date"
echo "current process ID: $$"
