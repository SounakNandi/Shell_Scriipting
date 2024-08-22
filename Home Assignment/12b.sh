for file in *; do
	if [[ -f $file && $file =~ ^[aeiouAEIOU] ]]; then
		echo $file
	fi
done
