#!/bin/bash
# Skrip Bash untuk menghitung bunga sederhana

echo "--- Kalkulator Bunga Sederhana ---"

# Meminta input dari pengguna
read -p "Masukkan uang pokok (P): " p
read -p "Masukkan suku bunga tahunan dalam % (R): " r
read -p "Masukkan periode waktu dalam tahun (T): " t

# Menghitung bunga sederhana (Formula: I = P * R * T / 100)
# Menggunakan 'bc' atau aritmatika skala untuk mendukung desimal jika diperlukan
interest=$(echo "scale=2; $p * $r * $t / 100" | bc 2>/dev/null || echo $((p * r * t / 100)))

# Menghitung total jumlah uang
total=$(echo "scale=2; $p + $interest" | bc 2>/dev/null || echo $((p + interest)))

echo "----------------------------------"
echo "Jumlah Bunga: $interest"
echo "Total Uang Akhir: $total"
