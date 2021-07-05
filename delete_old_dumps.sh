. ./variables.sh
echo 'Deleting all files that have been created more then 10 days ago';
find $DUMPS_FOLDER -mtime +10 -type f -delete
echo 'Files deleted';

