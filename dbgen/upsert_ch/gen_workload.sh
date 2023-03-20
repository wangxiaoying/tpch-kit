#!/bin/bash

echo "" > upsert.ch.sql

for f in ../delete.*
do
	i="${f##*.}"	
	# half replace, half new
	paste -d'|' ../delete.$i ../orders.tbl.u$i | awk -F'|' '{if (NR%2 == 1) {printf "insert into orders values (%d,%d,\x27%s\x27,%.2f,\x27%s\x27,\x27%s\x27,\x27%s\x27,%d,\x27%s\x27);\n", $1, $3, $4, $5, $6, $7, $8, $9, $10} else {printf "insert into orders values (%d,%d,\x27%s\x27,%.2f,\x27%s\x27,\x27%s\x27,\x27%s\x27,%d,\x27%s\x27);\n", $2, $3, $4, $5, $6, $7, $8, $9, $10}}' >> upsert.ch.sql
	# paste -d'|' delete.$i orders.tbl.u$i | head | awk -F'|' '{if (NR%2 == 1) {printf "insert into orders values (%d,%d,\x27%s\x27,%.2f,\x27%s\x27,\x27%s\x27,\x27%s\x27,%d,\x27%s\x27);\n", $1, $3, $4, $5, $6, $7, $8, $9, $10} else {printf "insert into orders values (%d,%d,\x27%s\x27,%.2f,\x27%s\x27,\x27%s\x27,\x27%s\x27,%d,\x27%s\x27);\n", $2, $3, $4, $5, $6, $7, $8, $9, $10}}' > upsert.ch.sql.$i
done
