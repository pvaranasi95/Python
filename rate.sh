RATE=$(curl -L -s "https://api.frankfurter.app/latest?from=$From&to=$To" | grep -o "\"$To\":[0-9.]*" | cut -d: -f2)

echo $RATE
echo "1 $From = $RATE $To"
