#!/bin/bash

echo 'Starting preprod database anonymization';
sh ./start_timestamp.sh

echo 'Anonymizing preprod database';
php www/current/bin/console app:anonymize-db
echo 'Dump anonymizing';

sh ./end_timestamp.sh
exit
