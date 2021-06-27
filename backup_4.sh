#!/bin/bash
##################################################
#     CRIADO POR: FERNANDO AUGUSTO PEREIRA       #
#       SCRIPT DE BACKUP DO SERVIDOR 4           #
#      DATA DA ULTIMA ATUALIZACAO: 23-06-21      # 
###################################################

################# VARIAVEIS ########################################
arquivos="/media/arquivos"
backup=" /media/backup"
echo " " > /media/arquivos/logs/BACKUP_Servidor4.log
echo -e "Backup iniciado em" $(date) "\n">> /media/arquivos/logs/BACKUP_Servidor4.log

################ ARQUIVOS DOS SISTEMA ###################
rsync -ardzu /scripts/ /media/backup/system
rsync -ardzu /etc/crontab /media/backup/system
rsync -ardzu /etc/samba/smb.conf /media/backup/system
#########################################################

rsync -ardzu $arquivos/audiencia$backup && echo "Backup em AUDIENCIA realizado com sucesso" >> /media/arquivos/logs/BACKUP_Servidor4.log
rsync -ardzu $arquivos/seguranca$backup && echo "Backup em SEGURANCA realizado com sucesso" >> /media/arquivos/logs/BACKUP_Servidor4.log
rsync -ardzu $arquivos/adm$backup && echo "Backup em ADMINISTRATIVO realizado com sucesso" >> /media/arquivos/logs/BACKUP_Servidor4.log
rsync -ardzu $arquivos/cimic$backup && echo "Backup em CIMIC realizado com sucesso" >> /media/arquivos/logs/BACKUP_Servidor4.log
rsync -ardzu $arquivos/comunicados$backup && echo "Backup em COMUNICADOS realizado com sucesso" >> /media/arquivos/logs/BACKUP_Servidor4.log
rsync -ardzu $arquivos/cpd$backup && echo "Backup em CPD realizado com sucesso" >> /media/arquivos/logs/BACKUP_Servidor4.log
rsync -ardzu $arquivos/cras$backup && echo "Backup em CRAS realizado com sucesso" >> /media/arquivos/logs/BACKUP_Servidor4.log
rsync -ardzu $arquivos/financas$backup && echo "Backup em FINANCAS realizado com sucesso" >> /media/arquivos/logs/BACKUP_Servidor4.log
rsync -ardzu $arquivos/infra$backup && echo "Backup em INFRA realizado com sucesso" >> /media/arquivos/logs/BACKUP_Servidor4.log
rsync -ardzu $arquivos/judiciaria$backup && echo "Backup em JUDICIARIA realizado com sucesso" >> /media/arquivos/logs/BACKUP_Servidor4.log
rsync -ardzu $arquivos/np$backup && echo "Backup em NUCLEO PESSOAL realizado com sucesso" >> /media/arquivos/logs/BACKUP_Servidor4.log
rsync -ardzu $arquivos/producao$backup && echo "Backup em PRODUCAO realizado com sucesso" >> /media/arquivos/logs/BACKUP_Servidor4.log
rsync -ardzu $arquivos/saude$backup && echo "Backup em SAUDE realizado com sucesso" >> /media/arquivos/logs/BACKUP_Servidor4.log
rsync -ardzu $arquivos/turno1$backup && echo "Backup em TURNO 1 realizado com sucesso" >> /media/arquivos/logs/BACKUP_Servidor4.log
rsync -ardzu $arquivos/turno2$backup && echo "Backup em TURNO 2 realizado com sucesso" >> /media/arquivos/logs/BACKUP_Servidor4.log
rsync -ardzu $arquivos/turno3$backup && echo "Backup em TURNO 3 realizado com sucesso" >> /media/arquivos/logs/BACKUP_Servidor4.log
rsync -ardzu $arquivos/turno4$backup && echo "Backup em TURNO 4 realizado com sucesso" >> /media/arquivos/logs/BACKUP_Servidor4.log
rsync -ardzu $arquivos/sindicancia$backup && echo "Backup em SINDICANCIA realizado com sucesso" >> /media/arquivos/logs/BACKUP_Servidor4.log
rsync -ardzu $arquivos/rol$backup && echo "Backup em ROL realizado com sucesso" >> /media/arquivos/logs/BACKUP_Servidor4.log
rsync -ardzu $arquivos/notes$backup && echo "Backup em NOTES realizado com sucesso" >> /media/arquivos/logs/BACKUP_Servidor4.log
rsync -ardzu $arquivos/peculio$backup && echo -e "Backup em PECULIO realizado com sucesso" "\n" >> /media/arquivos/logs/BACKUP_Servidor4.log

find /media/arquivos/ -type f -name ".*" -delete
find /media/arquivos/ -type f -name "~*" -delete 
find /media/arquivos/ -type f -name "$*"
find /media/arquivos/ -name "~*.*" -delete
find /media/arquivos/ -name "*.db" -delete
find /media/arquivos/ -name "~*.*" -delete
find /media/arquivos/ -name "*.db" -delete
find /media/arquivos/ -name "*.tmp" -delete
find /media/arquivos/ -name "*.ini" -delete
find /media/arquivos/ -name "*.ini" -delete
#echo -e "ESTES ARQUIVOS SERAO APAGADOS EM 7 DIAS" "\n" >> /media/arquivos/logs/newlog.log && find /media/arquivos/lixeira/ -mtime +7 >> /media/arquivos/logs/newlog.log



echo -e "Backup concluido em" $(date) "\n" >> /media/arquivos/logs/BACKUP_Servidor4.log


