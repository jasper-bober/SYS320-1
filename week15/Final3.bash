
txtFile="/home/champuser/Downloads/report.txt"

awk 'BEGIN { 
        x = 0;
        print "<table border="1">"
    }
    {
        if (NF == 1){
            print "<tr ><td colspan="2">"$i"</td>";
            print "</tr>"
        } else {
            if (x == 0){
                x++;
                print "<tr><td>"$i"</td>"
            } else {
                x = 0;
                print "<td>"$i"</td></tr>"
            }
        }
    }
    END {
        print "</table>"
    }' "$txtFile" > report.html


