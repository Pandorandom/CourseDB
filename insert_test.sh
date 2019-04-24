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

read -p "Name the table you wish to insert new data to: " TABLE
read -p "What column to fill? (e.g. name, user role): " COLUMN
read -p "What data do we insert to this column?: " ARG

INSERT="INSERT INTO ${TABLE} (${COLUMN}) VALUES ('$ARG');"

echo "building query"
sleep 2
echo ${INSERT}
