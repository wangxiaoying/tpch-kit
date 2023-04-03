#!/bin/bash

echo ".timer off" > upsert_bulk.duckdb.sql

for f in ../delete.*
do
	i="${f##*.}"	
	echo "insert or replace into orders values" >> upsert_bulk.duckdb.sql
	# half replace, half new
	paste -d'|' ../delete.$i ../orders.tbl.u$i | awk -F'|' '{if (NR > 1) {printf ","} if (NR%2 == 1) {printf "(%d,%d,\x27%s\x27,%.2f,\x27%s\x27,\x27%s\x27,\x27%s\x27,%d,\x27%s\x27)", $1, $3, $4, $5, $6, $7, $8, $9, $10} else {printf "(%d,%d,\x27%s\x27,%.2f,\x27%s\x27,\x27%s\x27,\x27%s\x27,%d,\x27%s\x27)", $2, $3, $4, $5, $6, $7, $8, $9, $10}}' >> upsert_bulk.duckdb.sql
	# paste -d'|' ../delete.$i ../orders.tbl.u$i | head | awk -F'|' '{if (NR > 1) {printf ",\n"} if (NR%2 == 1) {printf "(%d,%d,\x27%s\x27,%.2f,\x27%s\x27,\x27%s\x27,\x27%s\x27,%d,\x27%s\x27)", $1, $3, $4, $5, $6, $7, $8, $9, $10} else {printf "(%d,%d,\x27%s\x27,%.2f,\x27%s\x27,\x27%s\x27,\x27%s\x27,%d,\x27%s\x27)", $2, $3, $4, $5, $6, $7, $8, $9, $10}}' >> upsert_bulk.duckdb.sql
	echo ";" >> upsert_bulk.duckdb.sql
done
