#!/usr/bin/env bash
# Project:guessinggame.sh
#Assignment for The Unix Workbench
file_count=$(ls | wc -l)
#adding a function
function guess {
#Adding a If statement
if [[ $1 -lt $2]] # arg1 is less than arg2
then 
echo "Desired value is litlle low!"
elif [[$1 -gt $2]] #arg1 is gretaer then arg2
then
echo "Desired value is too high!"
else
echo "Hurray! You have guessed the value"
fi
}
#using a while loop till the correct value is not got
while [[$file_count -ne $guess_value ]]
do
  echo "Guess the number of files in the directory?"
  read guess_value
  echo $(guess $guess_value $file_count)
done
