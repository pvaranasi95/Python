RATE=$(curl -L -s "https://api.frankfurter.app/latest?from=$From&to=$To" | grep -o '"rates":{"$To":[0-9.]*' | cut -d: -f3 )

echo " 1 $From = " $RATE "$To"
