#!/bin/bash

echo 'Starting database backup dump load';
. ./variables.sh
. ./.passwords.sh
sh ./start_timestamp.sh

echo 'Loading dump to preprod database';
mysql --host=$MYSQL_HOST --port=$MYSQL_PORT -u $MYSQL_PREPROD_USER $MYSQL_PREPROD_DB -p$MYSQL_PREPROD_PASSWORD < $PREPROD_DUMP_PATH;
echo 'Dump copied';

sh ./end_timestamp.sh
exit
