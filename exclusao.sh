#!/bin/bash
##################################################
#     CRIADO POR: FERNANDO AUGUSTO PEREIRA       #
#       SCRIPT PARA LIMPEZA DA LIXEIRA           #
#      DATA DA ULTIMA ATUALIZACAO: 23-06-21      # 
##################################################

echo " " > /media/arquivos/logs/Arquivos_que_vao_ser_apagados.log

find /media/arquivos/lixeira/ -mtime +7 > /media/arquivos/logs/.aexcluir.log
echo -e "ESTES ARQUIVOS SERAO EXCLUIDOS DA LIXEIRA EM 7 DIAS" "\n" >> /media/arquivos/logs/Arquivos_que_vao_ser_apagados.log
cat /media/arquivos/logs/.aexcluir.log | awk -F'/lixeira/' '{ print NR" -> " $2 }' >> /media/arquivos/logs/Arquivos_que_vao_ser_apagados.log
rm /media/arquivos/logs/.aexcluir.log
