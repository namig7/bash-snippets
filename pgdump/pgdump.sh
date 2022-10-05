#!/bin/sh
#
# Script for backing up a PostgreSQL database and deleting files older than 30 days.

PGPASSWORD=postgres
export PGPASSWORD
ExportPath=/home/$USER/pgbackup
dbUser=postgres
database=postgres
hostIP=127.0.0.1

find $ExportPath \( -name "*-1[^5].*" -o -name "*-[023]?.*" \) -ctime +30 -delete
pg_dump -U $dbUser -d $database -h $hostIP -p 5432 | gzip > $ExportPath/pgsql_$(date "+%Y-%m-%d-%H").sql.gz

unset PGPASSWORD
