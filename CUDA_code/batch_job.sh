#!/bin/bash
#SBATCH -J pra3
#SBATCH --mail-user=liuxinyu19930328@gmail.com
#SBATCH --mail-type=ALL 
# Bitte achten Sie auf vollständige Pfad-Angaben:
#SBATCH -e /home/kurse/kurs00015/xl23lico/errmsg/pra3.err.%j
#SBATCH -o /home/kurse/kurs00015/xl23lico/results/pra3.out.%j
#SBATCH --account=kurs00015
#SBATCH --partition=kurs00015
#SBATCH --reservation=kurs00015
#
#SBATCH -n 4       # 1 Prozess
#SBATCH -c 1       # 1 Kerne pro Prozess --Default
#SBATCH --mem-per-cpu=1750    # Hauptspeicher in MByte pro Rechenkern
#SBATCH -t 00:4:59     # in Stunden:Minuten:Sekunden


# -------------------------------
# Anschließend schreiben Sie Ihre eigenen Befehle, wie z.B.
# Laden sie benötigte Module
module load gcc
module load cuda

# Wechseln sie in das Verzeichnis in dem ihr Executable liegt
cd /home/kurse/kurs00015/xl23lico/CUDA_code
# Ihr Programmaufruf
make all

./template images/example.bmp

make clean