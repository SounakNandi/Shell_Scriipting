start=$1
end=$2

for ((i=$start; i<=$end; i++));do
	echo -n "$i "
	if (($i%2==0));then
		echo -n "even "
	elif (($i%2!=0));then
		echo -n "odd "
	else
		echo -n "error "
	fi

	prime=1
	for ((j=2; j*j<=i; j++));do
		if (($i%$j==0));then
			prime=0
		fi
	done

	if ((prime==1 && i>2));then
		echo "prime"
	else
		echo " "
	fi
done
