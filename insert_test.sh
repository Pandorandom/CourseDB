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
dir=$(pwd)
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


function QUERYBUILDER() {
  while true
  do
    echo -e "\033[0;33m Welcome to the query generator tool.\033[0m"
    echo "************************************************************************************"
    echo "Please remember all entries are case-sensitive!!"
    read -p "Please enter the (case sensitive) table name you wish to generate a query for: " table_choice
    if [ -z "$table_choice" ]
    then
      echo -e "\033[0;31m Empty input detected. Using:\033[m \033[0;94m ${dir}/table.txt\033[0m"
      table_choice=$(pwd)/table.txt
    fi

    read -p "Please enter the attribute you wish to query (e.g. title, name, etc): " attribute
    if [ -z "$attribute" ]
    then
      echo -e "\033[0;31m Empty input detected. Using:\033[m \033[0;94m ${dir}/attributes.txt\033[0m"
      attribute=$(pwd)/attributes.txt
      if
    fi

    read -p "Please indicate the line separated file of values you wish to add to the queries: " values
    if [ -z "$values" ]
      echo -e "\033[0;31m Empty input detected. Using:\033[m \033[0;94m ${dir}/values.txt\033[0m"
      values=$(pwd)/values.txt
    fi

}




case "$CHOICE" in
      1)
        EAST_ONE;  ;;
      2)
        EAST_TWO;  ;;
      3)
        EAST_THREE;  ;;
      9)
        source $(pwd)/SOP.sh;  ;;
      q)
        break;  ;;
      *)
        echo -e "\033[0;31m Error: invalid input. \033[0m "
    esac
