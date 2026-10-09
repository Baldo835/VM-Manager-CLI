#!/bin/bash

while true;do

	echo "==========================="
	echo "MENU KERNEL-VIRTUAL-MACHINE"
	echo "==========================="
	echo "1) Mostra lo stato delle VM"
	echo "2) Avvia una VM"
	echo "3) Spegni una VM"
	echo "4) Esci"
	echo "==========================="
	read -p "Scegli un'opzione [1-4]: " scelta

	echo ""

case $scelta in

	1)
	echo "Mostra lo stato delle VM"
	virsh list --all
	;;

	2)
	echo "Avvia una VM"
	virsh start
      	read -p "Inserisci il nome esatto della VM da avviare: " nome_vm

            # Controllo con l'if (se la variabile NON è vuota)
            if [ -n "$nome_vm" ]; then
                virsh start "$nome_vm"
            else
                echo "[Errore] Devi inserire un nome valido!"
            fi
	;;

	3)
	echo "Spegni una VM"
	virsh destroy
	read -p "Inserisci il nome esatto della VM da spegnere: " nome_vm

            # Controllo con l'if (se la variabile NON è vuota)
            if [ -n "$nome_vm" ]; then
                virsh destroy "$nome_vm"
            else
                echo "[Errore] Devi inserire un nome valido!"
            fi
	;;

	4)
	echo "Esci"
	exit 0
	;;
esac

echo ""
    read -p "Premi [Invio] per tornare al menu..."

done
