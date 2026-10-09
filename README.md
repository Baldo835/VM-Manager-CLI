# 🖥️ VM Manager CLI (KVM Bash Manager)

Uno script interattivo scritto in puro **Bash** per Linux, progettato per gestire il ciclo di vita delle macchine virtuali KVM direttamente da terminale in modo semplice, rapido e guidato.

## 🚀 Funzionalità Principali
* **Interfaccia a Menu Persistente:** Sfrutta un ciclo infinito (`while true`) con pulizia dello schermo per mantenere il controllo costante senza affollare il terminale.
* **Gestione degli Stati (`virsh list --all`):** Visualizza in tempo reale l'elenco di tutte le macchine virtuali e il loro stato attuale (attive o spente).
* **Controllo Condizionale degli Input:** Integra controlli intelligenti basati su `if` e `-n` per verificare che l'utente inserisca effettivamente il nome di una VM prima di lanciare i comandi di avvio o arresto.
* **Automazione KVM:** Sfrutta i comandi nativi di libvirt (`virsh start`, `virsh destroy`) per interagire direttamente con il demone di virtualizzazione.

---

## 🛠️ Prerequisiti
Assicurati di avere installato sul tuo sistema Linux:
* `libvirt` e il pacchetto `qemu-kvm`
* Lo strumento a riga di comando `virsh`
* Permessi di esecuzione o accesso al socket di libvirt (spesso eseguito con privilegi di root o appartenendo al gruppo `libvirt`).

---

