#!/bin/bash

# General
CURRENT_DATE=`date +%Y-%m-%d`;
CURRENT_MONTH=`date +%m-%Y`;

# Folders
BACKUP_FOLDER=$HOME'/backup';

# Dumps
DUMPS_FOLDER=$HOME'/dumps';
DUMP_FILE_NAME=`printf "backup_dump_%s.sql" "$CURRENT_DATE"`;
DUMP_FILE_PATH="$DUMPS_FOLDER/$DUMP_FILE_NAME";

LAST_DUMP_NAME=$(ls -t $DUMPS_FOLDER/ | head -1);
LAST_DUMP_PATH=$DUMPS_FOLDER/$LAST_DUMP_NAME;

PREPROD_DUMP_PATH='~/dump.sql';

# MySql
MYSQL_PORT=3306;
MYSQL_HOST=127.0.0.1;
