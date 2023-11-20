#!/bin/bash
echo "Backup iniciado em $(date +%d"/"%b"/"%Y" as "%T)" >> /media/log/bkp.log
arquivos = "/media/arquivos"
#####
cp -R -f -u $arquivos/comunicados /media/backup/ && echo "Backup de COMUNICADOS realizado com sucesso" >> /media/log/bkp.log
cp -R -f -u $arquivos/cpd /media/backup/ && echo "Backup de CPD realizado com sucesso" >> /media/log/bkp.log
cp -R -f -u $arquivos/turno1 /media/backup/ && echo "Backup de TURNO 1 realizado com sucesso" >> /media/log/bkp.log
cp -R -f -u $arquivos/turno3 /media/backup/ && echo "Backup de TURNO 3 realizado com sucesso" >> /media/log/bkp.log
cp -R -f -u $arquivos/turno2 /media/backup/ && echo "Backup de TURNO 2 realizado com sucesso" >> /media/log/bkp.log
cp -R -f -u $arquivos/turno4 /media/backup/ && echo "Backup de TURNO 4 realizado com sucesso" >> /media/log/bkp.log
cp -R -f -u $arquivos/seguranca /media/backup/ && echo "Backup de SEGURANCA realizado com sucesso" >> /media/log/bkp.log
cp -R -f -u $arquivos/inclusao /media/backup/ && echo "Backup de INCLUSAO realizado com sucesso" >> /media/log/bkp.log
cp -R -f -u $arquivos/saude /media/backup/ && echo "Backup de SAUDE realizado com sucesso" >> /media/log/bkp.log
cp -R -f -u $arquivos/infra /media/backup/ && echo "Backup de INFRA realizado com sucesso" >> /media/log/bkp.log
cp -R -f -u $arquivos/rol /media/backup/ && echo "Backup de ROL realizado com sucesso" >> /media/log/bkp.log
cp -R -f -u $arquivos/producao /media/backup/ && echo "Backup de PRODUCAO realizado com sucesso" >> /media/log/bkp.log
cp -R -f -u $arquivos/sindicancia /media/backup/ && echo "Backup de SINDICANCIA realizado com sucesso" >> /media/log/bkp.log
cp -R -f -u $arquivos/peculio /media/backup/ && echo "Backup de PECULIO realizado com sucesso" >> /media/log/bkp.log
cp -R -f -u $arquivos/np /media/backup/ && echo "Backup de N.PESSOAL realizado com sucesso" >> /media/log/bkp.log
cp -R -f -u $arquivos/judiciaria /media/backup/ && echo "Backup de JUDICIARIA realizado com sucesso" >> /media/log/bkp.log
cp -R -f -u $arquivos/financas /media/backup/ && echo "Backup de FINANCAS realizado com sucesso" >> /media/log/bkp.log
cp -R -f -u $arquivos/cras /media/backup/ && echo "Backup de C.R.A.S realizado com sucesso" >> /media/log/bkp.log
cp -R -f -u $arquivos/cimic /media/backup/ && echo "Backup de C.I.M.I.C realizado com sucesso" >> /media/log/bkp.log
cp -R -f -u $arquivos/adm /media/backup/ && echo "Backup de ADM realizado com sucesso" >> /media/log/bkp.log
cp -R -f -u $arquivos/notes /media/backup/ && echo "Backup de NOTES realizado com sucesso" >> /media/log/bkp.log

echo "Backup concluido, inicio da LIMPEZA no backup em " $(date +%d"/"%b"/"%Y" as "%T) >> /media/log/bkp.log


find /media/backup/ -name "~*.*"  -delete
find /media/backup/ -name "*.avi" -delete
find /media/backup/ -name "*.mp4" -delete
find /media/backup/ -name "*.mp3" -delete
find /media/backup/ -name "*.msi" -delete
find /media/backup/ -name "*.exe" -delete  && echo "Arquivos desnecessario excluidos com sucesso" >> /media/log/bkp.log

#####
echo -e "Backup completo e limpeza concluidos em $(date +%d"/"%b"/"%Y" as "%T)\n" >> /media/log/bkp.log