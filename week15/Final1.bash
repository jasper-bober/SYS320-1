link="10.0.17.6/IOC.html"

fullPages=$(curl -sL "$link")

patternOutput=$(echo "$fullPages" | \
xmlstarlet sel -t -m "//table/tr[td]" -v "td[1]" -n)

echo "$patternOutput"



