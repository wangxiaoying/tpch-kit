#!/bin/bash

DUCKDB="/root/cx-fed-duckdb/build/release/duckdb -init /root/public_bi_benchmark/scripts/duckdb/test.duckdbrc"

echo "$(date)"
$DUCKDB < upsert.duckdb.sql > log 2>&1
echo "$(date)"
