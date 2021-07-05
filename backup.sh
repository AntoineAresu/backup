echo 'Starting database backup dump fetch';
. ./variables.sh
. ./.passwords.sh
sh ./start_timestamp.sh
cd $BACKUP_FOLDER

echo 'Creating dump';
mysqldump --add-drop-table --host=127.0.0.1 --port=$MYSQL_PORT -u $MYSQL_USER $MYSQL_DB -p$MYSQL_PASSWORD > $DUMP_FILE_PATH;
echo 'Dump created';

sh ./delete_old_dumps.sh
sh ./end_timestamp.sh
exit

