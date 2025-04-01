#!/bin/bash

psql test_db < create_tables.sql
psql test_db < insert_data.sql
psql test_db < run_queries.sql

