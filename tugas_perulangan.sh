#!/bin/bash

# ============================================
# SCRIPT PERULANGAN UNTUK TUGAS SISTEM OPERASI
# Nama: Hudzaifah
# NIM: 241057022
# Branch: Hudzaifah_241057022
# ============================================

echo "========================================"
echo "   PROGRAM PERULANGAN BASH SCRIPT"
echo "========================================"

# 1. PERULANGAN FOR SEDERHANA
echo ""
echo "1. PERULANGAN FOR 1-10:"
for i in {1..10}
do
    echo "   Nomor: $i"
done

# 2. PERULANGAN FOR DENGAN LANGKAH 2
echo ""
echo "2. PERULANGAN DENGAN LANGKAH 2 (1-10):"
for ((i=1; i<=10; i+=2))
do
    echo "   Bilangan ganjil: $i"
done

# 3. PERULANGAN WHILE
echo ""
echo "3. PERULANGAN WHILE:"
counter=1
while [ $counter -le 5 ]
do
    echo "   Counter while: $counter"
    counter=$((counter + 1))
done

# 4. PERULANGAN UNTIL
echo ""
echo "4. PERULANGAN UNTIL:"
num=1
until [ $num -gt 5 ]
do
    echo "   Counter until: $num"
    num=$((num + 1))
done

# 5. PERULANGAN DENGAN ARRAY
echo ""
echo "5. PERULANGAN DENGAN ARRAY:"
mahasiswa=("Ali" "Budi" "Citra" "Dewi" "Eko")
echo "   Daftar Mahasiswa:"
index=1
for nama in "${mahasiswa[@]}"
do
    echo "   $index. $nama"
    index=$((index + 1))
done

# 6. PERULANGAN BERSARANG (NESTED LOOP)
echo ""
echo "6. PERULANGAN BERSARANG:"
for baris in {1..3}
do
    echo -n "   Baris $baris: "
    for kolom in {1..3}
    do
        echo -n "$baris.$kolom "
    done
    echo ""
done

# 7. PERULANGAN DENGAN BREAK DAN CONTINUE
echo ""
echo "7. PERULANGAN DENGAN BREAK DAN CONTINUE:"
for i in {1..10}
do
    if [ $i -eq 3 ]; then
        echo "   Melompati angka 3 (continue)"
        continue
    fi
    
    if [ $i -eq 8 ]; then
        echo "   Berhenti di angka 8 (break)"
        break
    fi
    
    echo "   Angka: $i"
done

echo ""
echo "========================================"
echo "      PROGRAM TELAH SELESAI"
echo "========================================"
