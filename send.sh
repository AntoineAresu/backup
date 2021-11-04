#!/bin/bash

echo 'Starting database backup dump send to preprod';
. ./variables.sh
. ./.passwords.sh
sh ./start_timestamp.sh

echo 'Copying dump to preprod';
scp $LAST_DUMP_PATH $PREPROD_USER@$PREPROD_IP:~/dump.sql
echo 'Dump copied';

sh ./end_timestamp.sh
exit
