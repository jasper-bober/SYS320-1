
logFile="/home/champuser/Downloads/access.log"
txtFile="/home/champuser/Downloads/IOC.txt"

results=$(cat "$logFile" | cut -d' ' -f1,4,7 |grep -f "$txtFile" | tr -d "[]")

echo "$results" > report.txt
