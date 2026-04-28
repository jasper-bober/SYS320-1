
link="10.0.17.6/Assignment.html"

fullPages=$(curl -sL "$link")

tempdata=$(echo "$fullPages" | \
xmlstarlet select --template --value-of \
"//table[@id='temp']//tr//td" | awk 'NR %2 == 1' )

pressuredata=$(echo "$fullPages" | \
xmlstarlet select --template --value-of \
"//table[@id='press']//tr//td" | awk 'NR %2 == 1' )

timedata=$(echo "$fullPages" | \
xmlstarlet select --template --value-of \
"//table[@id='temp']//tr//td[2]")

linecount=$(echo "$tempdata" | wc -l)

for (( i=1; i<=$linecount; i++ )); do

	temp=$(echo "$tempdata" | head -n $i | tail -n 1)
	pressure=$(echo "$pressuredata" | head -n $i | tail -n 1)
	times==$(echo "$timedata" | head -n $i | tail -n 1)

	echo -e "$pressure $temp $times"

done
