#!/bin/bash

mount -t nfs 10.14.180.5:/home/backup1/siscar /media/bkp
data=$(date +"%d-%b-%Y")

cd /media/bkp
mysqldump -uroot -pfuturo07 siscar > siscar_$data.sql
echo "backup do dia $data" >> /media/bkp/siscar.log
cp /scripts/backup_siscar.sh /media/bkp/
cd /
umount 10.14.180.5:/home/backup1/siscar 
