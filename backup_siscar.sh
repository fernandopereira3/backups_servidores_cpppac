#!/bin/bash

data=$(date +"%d-%b-%Y")

mount -t nfs 10.14.180.10:/media/programas/siscar /media/bkp
cd /media/bkp
mysqldump -uroot -pfuturo07 siscar > siscar_$data.sql
echo "backup do dia"$data >> /media/bkp/siscar.txt
cd /
umount -l /media/bkp
