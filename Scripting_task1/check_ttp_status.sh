!#/bin/bash

URL="https://www.guvi.in"

HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" $URL)

echo "Http Status Code: $HTTP_STATUS"


if [ $HTTP_STATUS -eq 200 ]; then

echo "Success: The website is reachable"

else

echo "Failure: the website is not reachable, the error code is $HTTP_STATUS"

fi