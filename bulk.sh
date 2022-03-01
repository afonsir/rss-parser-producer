#!/bin/bash

while IFS= read -r thread
do
  printf "\n$thread\n"
  curl --request POST --data '{ "url": "'$thread'" }' http://localhost:5000/parse
done < "threads.txt"
