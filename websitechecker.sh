#!/bin/bash
echo "Hi, what would you like to search ?"
read -p 'Search: ' searchhvar
response=$(curl -Ls -o /dev/null -w "%{http_code}" "https://www.$searchhvar.com")

if [[ "$response" -eq 200 || "$response" -eq 301 || "$response" -eq 302 || "$response" -eq 307 || "$response" -eq 204 ]];
then
   echo "OK"
else
        echo " This website is currently not accessible, please select in the following window"
fi
