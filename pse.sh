#!/bin/sh

ROJO="\033[0;31m"
AZUL="\033[0;34m"
FIN_COL="\033[0m"

clear
echo -e "       ${ROJO}|${FIN_COL}"
echo -e "   ____${ROJO}v${FIN_COL}__${AZUL}/${FIN_COL}____"
echo -e "  /      ${AZUL}/${FIN_COL}    /"
echo -e " /    ${AZUL}PSe${FIN_COL}    /"
echo -e "/___________/"
echo -e "       ${ROJO}|${FIN_COL}"
echo -e "   ____${ROJO}v${FIN_COL}__${AZUL}/${FIN_COL}____"
echo -e "  /      ${AZUL}/${FIN_COL}    /"
echo -e " /    ${AZUL}Vim${FIN_COL}    /"
echo -e "/___________/"
echo -e "       ${ROJO}|${FIN_COL}"
echo -e "       ${ROJO}v${FIN_COL}\n"
echo -e "Este script crea un archivo de tipo .psc y lo abre en Vim para su edicion.\n"
echo "Quiere abrir un proyecto? (Si = 1; No = 2; Salir = 0) " && read OP

if [[ OP -eq 1 ]]; then
    cd $HOME/Documentos/codigo/pseint/ && vim -c :FZF
elif [[ OP -eq 2 ]]; then
    echo -e "Nombre del programa: "
    read TITULO
    
    echo -e "Algoritmo ${TITULO}\n\nFinAlgoritmo" > $DIRECCION/${TITULO}.psc && vim $DIRECCION/${TITULO}.psc
elif [[ OP -eq 0 ]]; then
    clear
fi

clear
