tail -200 /var/log/httpd/access_log| sort -nk1| grep -e "POST" -e "GET"| awk 'BEGIN {FS = "/" } ; {print $1 $3 $4}'| awk '{print $1, $6, $7, $8}'| sed 's/"//'| uniq -c | sort -n

# Prints out what every IP in the last 200 connections was doing to the server.
# This would be useful for finding out how a site or server is attacked 
