#!/bin/bash

mount -t nfs IP_DO_SERVIDOR:/home/backup1/sia /media/backups

data=$(date +"%d-%b-%Y")
mkdir /media/backups/sia-$data

cp -Rfv /scripts/ /media/backups

cp -Rfv /home/sia/backups/ /media/backups
cp -Rfv /home/sia/banco/* /media/backups/sia-$data

cp -Rfv /home/sia/update/backups/* /media/backups/bkp_padrao/

echo "backup do dia $data" >> /media/backups/siabkup.log
umount -l IP_DO_SERVIDOR:/home/backup1/sia
