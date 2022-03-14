# Backup scripts for MySql applications

## Prerequisites

* You need to have `mysql` CLI installed on the machine and `mysqldump` command available
* You need to have `ssh` setup to use `scp` command

## Setup

### Clone

* `git clone git@github.com:re-connect/backup.git`
* `cd backup`
* `mkdir dumps`
* `touch ./.passwords.sh`

### 

Then, Hydrate password.sh with the following values

#### For Preprod : 

* MYSQL_PREPROD_DB
* MYSQL_PREPROD_PASSWORD
* MYSQL_PREPROD_USER

#### For Prod : 

* MYSQL_PASSWORD
* MYSQL_USER
* MYSQL_DB
* PREPROD_USER
* PREPROD_IP
