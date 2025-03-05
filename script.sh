#!bin/bash

# Task 1: Get the HTTP ststus code of guvi.in
URL="https://www.guvi.in"
STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}\n" "$URL")

echo "HTTP status code: $STATUS_CODE"
if [[ $STATUS_CODE -ge 200 && $STATUSCODE -lt 300 ]]; then
echo "success: guvi.in is reachable"
else
echo "failure: guvi.in returned an error"
fi


# Task2 : Replace "give" with "learning" ina given file
FILE="input.txt"

if [[ -f "$FILE" ]]; then
sed -i '5,$ {/welcome/s/give/learning/g}' "$FILE"
echo "Replacement task completed successfully in $FILE."
else
echo "Error: File $FILE not found."
fi
