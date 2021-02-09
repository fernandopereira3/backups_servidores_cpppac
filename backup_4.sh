#!/bin/bash
## ARQUIVO DE BACKUP DE SERVIDOR .4 DAQUI O SERVIDOR DE BACKUP(10) TIRA AS INFORMACOES ##
arquivos="/media/arquivos"
backup=" /media/backup"
echo "Backup iniciado em $(date +%d"/"%b"/"%Y" as "%T)" >> /media/arquivos/logs/BACKUP_Servidor4.txt
########### copia dos arquivos para o backup #############
cp -f -R -v /scripts /media/backup/system
cp -f -R -v /etc/crontab /media/backup/system
cp -f -R -v /etc/samba/smb.conf /media/backup/system
#cp -f -R -u -v /media/backup/siabkp
cp -f -R -u -v $arquivos/audiencia$backup
cp -f -R -u -v $arquivos/seguranca$backup
cp -f -R -u -v $arquivos/adm$backup
cp -f -R -u -v $arquivos/cimic$backup
cp -f -R -u -v $arquivos/comunicados$backup
cp -f -R -u -v $arquivos/cpd$backup
cp -f -R -u -v $arquivos/cras$backup
cp -f -R -u -v $arquivos/financas$backup
cp -f -R -u -v $arquivos/infra$backup
cp -f -R -u -v $arquivos/judiciaria$backup
cp -f -R -u -v $arquivos/np$backup
cp -f -R -u -v $arquivos/producao$backup
cp -f -R -u -v $arquivos/saude$backup
cp -f -R -u -v $arquivos/turno1$backup
cp -f -R -u -v $arquivos/turno2$backup
cp -f -R -u -v $arquivos/turno3$backup
cp -f -R -u -v $arquivos/turno4$backup
cp -f -R -u -v $arquivos/sindicancia$backup
cp -f -R -u -v $arquivos/publico$backup
cp -f -R -u -v $arquivos/rol$backup
cp -f -R -u -v $arquivos/notes$backup
cp -f -R -u -v $arquivos/peculio$backup
echo -e "Backup concluido $(date +%d"/"%b"/"%Y" as "%T)\n" >> /media/arquivos/logs/BACKUP_Servidor4.txt
#umount -l 10.14.180.4:/media/arquivos


