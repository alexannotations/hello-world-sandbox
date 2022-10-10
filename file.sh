#!/bin/bash
userDataBase="root"
password=""
host="127.0.0.1"
port=3306

mysql -h $host -P $port -u $userDataBase -p$password \
    -e "show databases; \
        SELECT current_user; \
    "
