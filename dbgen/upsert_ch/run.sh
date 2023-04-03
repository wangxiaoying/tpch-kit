#!/bin/bash

CLICKHOUSE="clickhouse-client -dtest"

echo "$(date)"
$CLICKHOUSE --queries-file upsert.ch.sql > log 2>&1
# $CLICKHOUSE --queries-file upsert_bulk.ch.sql > log 2>&1
echo "$(date)"
