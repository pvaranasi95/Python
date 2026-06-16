RATE=$(curl -L -s "https://api.frankfurter.app/latest?from=$From&to=$To" | grep -o "\"$To\":[0-9.]*" | cut -d: -f2)

echo "1 $From = $RATE $To"

Final=$(awk "BEGIN {print $Amount * $RATE}")

echo "For $Amount $From You Get $Final $To"
echo "For $Amount $From You Get $Final $To" > rate.txt
