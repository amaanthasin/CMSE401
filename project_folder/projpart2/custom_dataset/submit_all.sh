#!/bin/bash

dropdb test_db
createdb test_db

echo "Running default query..."
psql test_db < create_tables.sql
psql test_db < insert_data.sql
psql test_db < run_queries_default.sql > output_default.txt 2>&1

echo "Running forced slow query..."
dropdb test_db
createdb test_db
psql test_db < create_tables.sql
psql test_db < insert_data.sql
psql test_db < run_queries_forced.sql > output_forced.txt 2>&1

echo "Running parallel worker test..."
dropdb test_db
createdb test_db
psql test_db < create_tables.sql
psql test_db < insert_data.sql
psql test_db < run_queries_parallel.sql > output_parallel.txt 2>&1

echo "All tests complete ✅"
