#!/bin/bash
echo "set global validate_password_policy=0;set global validate_password_length=6;SET PASSWORD  = PASSWORD('123456');" | mysql -u root --password=`grep 'temporary password' /var/log/mysqld.log |awk '{print $11}'` -b --connect-expired-password
