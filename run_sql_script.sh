#!/bin/bash


DB_NAME="ccdb"
DB_DUMP_FILE="./bcb.pgdump/bcb" 
PG_USER="postgres"

# Create the database
sudo -u $PG_USER createdb $DB_NAME

# Restore the database from the dump
sudo -u $PG_USER psql -d $DB_NAME -f $DB_DUMP_FILE

# Create .csv file for the given format
# function_id_one, function_id_two, syntactic_type, internal, text_of_funciton_id_one, text_of_funciton_id_two
# output file is 25.7 GB
sudo -u $PG_USER psql -d $DB_NAME <<EOF
COPY (
  SELECT
    function_id_one,
    function_id_two,
    syntactic_type,
    internal,
    (SELECT text FROM public.pretty_printed_functions WHERE function_id = clones.function_id_one) AS pretty_function_one,
    (SELECT text FROM public.pretty_printed_functions WHERE function_id = clones.function_id_two) AS pretty_function_two
  FROM public.clones
) TO 'path_to_output_file' WITH CSV HEADER;
EOF

