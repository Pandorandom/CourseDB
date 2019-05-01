#!/usr/bin/env bash
#
#
#
# TOOL NAME: SQL_Inserter
# WRITTEN BY: tacree
# DATE: 4/23/2019
# REV:
# First Worked: 4/23/2019
# Purpose: build bash constructed SQL queries
#
# REV LIST:
# BY:
# DATE:
# CHANGES MADE:
#
#
#

#INSERT="INSERT INTO ${TABLE} (${COLUMN}) VALUES ('$ARG');"


users=$(pwd)/usernames.txt
courses=$(pwd)/courses.txt
crns=$(pwd)/coursecrns.txt
updates=$(pwd)/updates.txt
IFS=$'\n'
query='"INSERT INTO ${table_choice} (${attribute}) VALUES ('"%s"');\n" >> inserts.txt $values)'

while read -r users
do
  printf "INSERT INTO User (name) VALUES ('"%s"');\n" >> inserts.txt $users
done < "$users"
echo "Usernames added to insert file."



while read -r courses
do
  printf "INSERT INTO Course (title) VALUES ('"%s"');\n" >> inserts.txt $courses
  #printf "UPDATE Course SET crn='"%s"' WHERE title=${courses};\n" >> updates.txt $courses
done < "$courses"
echo "Course titles added to insert file."
