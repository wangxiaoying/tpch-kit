#!/bin/bash

echo "" > upsert_bulk.ch.sql

for f in ../delete.*
do
	i="${f##*.}"	
	# half replace, half new
	echo "insert into orders values" >> upsert_bulk.ch.sql
	paste -d'|' ../delete.$i ../orders.tbl.u$i | awk -F'|' '{if (NR > 1) {printf ","} if (NR%2 == 1) {printf "(%d,%d,\x27%s\x27,%.2f,\x27%s\x27,\x27%s\x27,\x27%s\x27,%d,\x27%s\x27)", $1, $3, $4, $5, $6, $7, $8, $9, $10} else {printf "(%d,%d,\x27%s\x27,%.2f,\x27%s\x27,\x27%s\x27,\x27%s\x27,%d,\x27%s\x27)", $2, $3, $4, $5, $6, $7, $8, $9, $10}}' >> upsert_bulk.ch.sql
	# paste -d'|' ../delete.$i ../orders.tbl.u$i | head | awk -F'|' '{if (NR > 1) {printf ","} if (NR%2 == 1) {printf "(%d,%d,\x27%s\x27,%.2f,\x27%s\x27,\x27%s\x27,\x27%s\x27,%d,\x27%s\x27)", $1, $3, $4, $5, $6, $7, $8, $9, $10} else {printf "(%d,%d,\x27%s\x27,%.2f,\x27%s\x27,\x27%s\x27,\x27%s\x27,%d,\x27%s\x27)", $2, $3, $4, $5, $6, $7, $8, $9, $10}}' >> upsert_bulk.ch.sql
	echo ";" >> upsert_bulk.ch.sql
done
