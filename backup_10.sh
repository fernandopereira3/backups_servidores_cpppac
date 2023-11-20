#!/bin/bash
##################################################
#     CRIADO POR: FERNANDO AUGUSTO PEREIRA       #
#       SCRIPT DE BACKUP DO SERVIDOR 5           #
#      DATA DA ULTIMA ATUALIZACAO: 23-06-21      # 
##################################################

mount -t nfs IP_DO_SERVIDOR:/media/arquivos/logs /home/log && mount -t nfs IP_DO_SERVIDOR:/media/backup /home/arquivos
echo "  " > /home/log/BACKUP_Servidor10.log
echo -e "Backup iniciado em" $(date) "\n" >> /home/log/BACKUP_Servidor10.log

################ ARQUIVOS DOS SISTEMA ###################
rsync -ardzu /scripts /home/backup1/system
rsync -ardzu /etc/crontab /home/backup1/system
rsync -ardzu /etc/samba/smb.conf /home/backup1/system

################################## BACKUP ##########################################################################################################
rsync -ardzu /home/arquivos/system /home/backup1/ && echo "Backup do SISTEMA realizado com sucesso" >> /home/log/BACKUP_Servidor10.log
rsync -ardzu /home/arquivos/comunicados /home/backup1/ && echo "Backup de COMUNICADOS realizado com sucesso" >> /home/log/BACKUP_Servidor10.log
rsync -ardzu /home/arquivos/cpd /home/backup1/ && echo "Backup de CPD realizado com sucesso" >> /home/log/BACKUP_Servidor10.log
rsync -ardzu /home/arquivos/turno1 /home/backup1/ && echo "Backup de TURNO 1 realizado com sucesso" >> /home/log/BACKUP_Servidor10.log
rsync -ardzu /home/arquivos/turno3 /home/backup1/ && echo "Backup de TURNO 3 realizado com sucesso" >> /home/log/BACKUP_Servidor10.log
rsync -ardzu /home/arquivos/turno2 /home/backup1/ && echo "Backup de TURNO 2 realizado com sucesso" >> /home/log/BACKUP_Servidor10.log
rsync -ardzu /home/arquivos/turno4 /home/backup1/ && echo "Backup de TURNO 4 concluido" >> /home/log/BACKUP_Servidor10.log
rsync -ardzu /home/arquivos/seguranca /home/backup1/ && echo "Backup de SEGURANCA concluido" >> /home/log/BACKUP_Servidor10.log
rsync -ardzu /home/arquivos/inclusao /home/backup1/ && echo "Backup de INCLUSAO concluido" >> /home/log/BACKUP_Servidor10.log
rsync -ardzu /home/arquivos/saude /home/backup1/ && echo "Backup de SAUDE concluido" >> /home/log/BACKUP_Servidor10.log
rsync -ardzu /home/arquivos/infra /home/backup1/ && echo "Backup de INFRA concluido" >> /home/log/BACKUP_Servidor10.log
rsync -ardzu /home/arquivos/rol /home/backup1/ && echo "Backup de ROL concluido" >> /home/log/BACKUP_Servidor10.log
rsync -ardzu /home/arquivos/producao /home/backup1/ && echo "Backup de PRODUCAO concluido" >> /home/log/BACKUP_Servidor10.log
rsync -ardzu /home/arquivos/sindicancia /home/backup1/ && echo "Backup de SINDICANCIA concluido" >> /home/log/BACKUP_Servidor10.log
rsync -ardzu /home/arquivos/peculio /home/backup1/ && echo "Backup de PECULIO concluido" >> /home/log/BACKUP_Servidor10.log
rsync -ardzu /home/arquivos/np /home/backup1/ && echo "Backup de N.PESSOAL concluido" >> /home/log/BACKUP_Servidor10.log
rsync -ardzu /home/arquivos/judiciaria /home/backup1/ && echo "Backup de JUDICIARIA concluido" >> /home/log/BACKUP_Servidor10.log
rsync -ardzu /home/arquivos/financas /home/backup1/ && echo "Backup de FINANCAS concluido" >> /home/log/BACKUP_Servidor10.log
rsync -ardzu /home/arquivos/cras /home/backup1/ && echo "Backup de C.R.A.S concluido" >> /home/log/BACKUP_Servidor10.log
rsync -ardzu /home/arquivos/cimic /home/backup1/ && echo "Backup de C.I.M.I.C concluido" >> /home/log/BACKUP_Servidor10.log
rsync -ardzu /home/arquivos/adm /home/backup1/ && echo "Backup de ADM concluido" >> /home/log/BACKUP_Servidor10.log
rsync -ardzu /home/arquivos/notes /home/backup1/ && echo -e "Backup de NOTES concluido" "\n" >> /home/log/BACKUP_Servidor10.log


####################################### LIMPEZA #################################################################################
#echo -e "Vou mudar as permisses do BACKUP, tenha calma, isso pode e vai demorar" && chmod -R 777 /home/backup1/
find /home/backup1 -name "~*.*" -delete && find /home/arquivos -name "~*.*" -delete
find /home/backup1 -name "*.db" -delete && find /home/arquivos -name "*.db" -delete
find /home/backup1 -name "~*.*" -delete && find /home/arquivos -name "~*.*" -delete
find /home/backup1 -name "*.db" -delete && find /home/arquivos -name "*.db" -delete
find /home/backup1 -name "*.tmp" -delete && find /home/arquivos -name "*.tmp" -delete
find /home/backup1 -name "*.ini" -delete && find /home/arquivos -name "*.ini" -delete
find /home/backup1 -name "*.ini" -delete && find /home/arquivos -name "*.ini" -delete


#################################################################################################################################
#clear
#echo "Tudo pronto :) ;)"
#sleep 5
######

echo -e "Backup iniciado em" $(date) "\n" >> /home/log/BACKUP_Servidor10.log
cat /home/log/BACKUP_Servidor10.log | mutt -s "LOG DE BACKUP $data" -- fernandopereira-3@hotmail.com
umount -l /home/log && umount -l /home/arquivos
