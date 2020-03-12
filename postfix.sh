postqueue -p | tail -n +2 | awk 'BEGIN { RS = "" } /ianio@ianio\.com/ { print $1 }' | tr -d '*!'| postsuper -d -
