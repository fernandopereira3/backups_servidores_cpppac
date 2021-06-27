#!/bin/bash
mount -t nfs 10.14.180.4:/media/arquivos/logs /home/cpd/log
mount -t nfs 10.14.180.4:/media/backup /media/arquivos
echo "Backup iniciado em $(date +%d"/"%b"/"%Y" as "%T)" >> /home/cpd/log/BACKUP_Servidor10.txt
#####
cp -f -R -v /scripts /media/backup1/system10/
cp -f -R -v /etc/crontab /media/backup1/system10/
cp -v -R -f /media/arquivos/system /media/backup1/system10/
cp -v -R -f -u /media/arquivos/system /media/backup1/ && echo "Backup de COMUNICADOS realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/arquivos/comunicados /media/backup1/ && echo "Backup de COMUNICADOS realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/arquivos/cpd /media/backup1/ && echo "Backup de CPD realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/arquivos/turno1 /media/backup1/ && echo "Backup de TURNO 1 realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/arquivos/turno3 /media/backup1/ && echo "Backup de TURNO 3 realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/arquivos/turno2 /media/backup1/ && echo "Backup de TURNO 2 realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/arquivos/turno4 /media/backup1/ && echo "Backup de TURNO 4 realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/arquivos/seguranca /media/backup1/ && echo "Backup de SEGURANCA realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/arquivos/inclusao /media/backup1/ && echo "Backup de INCLUSAO realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/arquivos/saude /media/backup1/ && echo "Backup de SAUDE realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/arquivos/infra /media/backup1/ && echo "Backup de INFRA realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/arquivos/rol /media/backup1/ && echo "Backup de ROL realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/arquivos/producao /media/backup1/ && echo "Backup de PRODUCAO realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/arquivos/sindicancia /media/backup1/ && echo "Backup de SINDICANCIA realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/arquivos/peculio /media/backup1/ && echo "Backup de PECULIO realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/arquivos/np /media/backup1/ && echo "Backup de N.PESSOAL realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/arquivos/judiciaria /media/backup1/ && echo "Backup de JUDICIARIA realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/arquivos/financas /media/backup1/ && echo "Backup de FINANCAS realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/arquivos/cras /media/backup1/ && echo "Backup de C.R.A.S realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/arquivos/cimic /media/backup1/ && echo "Backup de C.I.M.I.C realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/arquivos/adm /media/backup1/ && echo "Backup de ADM realizado com sucesso" >> /media/log/bkp_log.txt
cp -v -R -f -u /media/arquivos/notes /media/backup1/ && echo "Backup de NOTES realizado com sucesso" >> /media/log/bkp_log.txt

echo "Backup concluido, inicio da LIMPEZA no backup em $(date +%d"/"%b"/"%Y" as "%T)" >> /home/cpd/log/BACKUP_Servidor10.txt
clear
sleep 2
#########################################################
echo -e "Vou mudar as permissões do BACKUP, tenha calma, isso pode e vai demorar" && chmod -R 777 /media/backup1
find /media/backup1 -name "~*.*" -delete
find /media/backup1 -name "*.db" -delete
find /media/backup1 -name "~*.*" -delete
find /media/backup1 -name "*.db" -delete
find /media/backup1 -name "Desktop.ini" -delete
find /media/backup1 -name "Desktop.ini" -delete
##########################################################
find /media/arquivos -name "desktop.ini" -delete
find /media/arquivos -name "desktop.ini" -delete
find /media/arquivos -name "~*.*" -delete
find /media/arquivos -name "*.db" -delete
find /media/arquivos -name "~*.*" -delete
find /media/arquivos -name "*.db" -delete
sleep 2
clear
echo "Tudo pronto :) ;)"
sleep 5
#####
echo -e "Backup e Limpeza concluidos em $(date +%d"/"%b"/"%Y" as "%T)\n" >> /home/cpd/log/BACKUP_Servidor10.txt
umount -l 10.14.180.4:/media/arquivos/logs
umount -l /media/arquivos
