RATE=$(curl -L -s "https://api.frankfurter.app/latest?from=$From&to=$To" | grep -o "\"$To\":[0-9.]*" | cut -d: -f2)

echo "1 $From = $RATE $To"

Amount=1000
RATE=23.572

Final=$(awk "BEGIN {print $Amount * $RATE}")

echo "For $Amount $From You Get $Final $To"
