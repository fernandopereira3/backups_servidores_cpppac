#!/bin/bash

data=$(date +"%d-%b-%Y")
diretorio =$(mkdir /media/backups/siabkp/sia-$data)

mount -t nfs 10.14.180.10:/media/programas/sia /media/backups

cp -R -f /home/sia/banco/* /media/backups/siabkp
cp -R -f /home/sia/update/backups /media/backups/siabkp_padrao
echo "backup do dia" $data"\n" >> /media/backups/siabkup.txt

umount -l /media/arquivos/programas/sia 