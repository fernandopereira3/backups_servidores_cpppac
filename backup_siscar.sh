#!/bin/bash

mount -t nfs IP_DO_SERVIDOR:/home/backup1/siscar /media/bkp
data=$(date +"%d-%b-%Y")

cd /media/bkp
mysqldump -uroot -pfuturo07 siscar > siscar_$data.sql
echo "backup do dia $data" >> /media/bkp/siscar.log
cp /scripts/backup_siscar.sh /media/bkp/
cd /
umount IP_DO_SERVIDOR:/home/backup1/siscar 
