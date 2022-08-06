#!/bin/bash

#Color definition
RED="\033[1;31m"
GREEN="\033[1;32m"
NOCOLOR="\033[0m"

RESPONSE1='<p>Hello, World</p>'
RESPONSE2='{"message":"Hello, World!"}'

sleep 1s
echo -e 'Executing TC1: curl -H "Content-Type: application/xml" -X GET http://127.0.0.1:8090/' 
TC1=$(/usr/bin/curl -H "Content-Type: application/xml" -X GET http://127.0.0.1:8090/)

if [ "${TC1}" == "${RESPONSE1}" ]
then
    echo -e "TC1 : GET Request without JSON Header : ${GREEN}PASS${NOCOLOR}" 
else
    echo -e "TC1 : GET Request without JSON Header : ${RED}FAIL${NOCOLOR}" 
fi

echo -e 'Executing TC2: /usr/bin/curl -H "Content-Type: application/json" -X GET http://127.0.0.1:8090/' 
TC2=$(/usr/bin/curl -H "Content-Type: application/json" -X GET http://127.0.0.1:8090/)

if [ "${TC2}" == "${RESPONSE2}" ]
then
    echo -e "TC2 : GET Request with JSON Header : ${GREEN}PASS${NOCOLOR}" 
else
    echo -e "TC2 : GET Request with JSON Header : ${RED}FAIL${NOCOLOR}" 
fi

echo -e 'Executing TC3": /usr/bin/curl -H "Content-Type: application/json" -X POST http://127.0.0.1:8090/' 
TC3=$(/usr/bin/curl -H "Content-Type: application/json" -X POST http://127.0.0.1:8090/)

if [ "${TC3}" == "${RESPONSE2}" ]
then
    echo -e "TC3 : POST Request with JSON Header : ${GREEN}PASS${NOCOLOR}" 
else
    echo -e "TC3 : POST Request with JSON Header : ${RED}FAIL${NOCOLOR}" 
fi

echo -e 'Executing TC4: curl -X POST http://127.0.0.1:8090/' 
TC4=$(curl -X POST http://127.0.0.1:8090/)

if [ "${TC4}" == "${RESPONSE1}" ]
then
    echo -e "TC4 : POST Request without JSON Header : ${GREEN}PASS${NOCOLOR}" 
else
    echo -e "TC4 : POST Request without JSON Header : ${RED}FAIL${NOCOLOR}" 
fi