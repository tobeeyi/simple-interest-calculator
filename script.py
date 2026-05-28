def hitung_bunga_sederhana(principal, rate, time):
    # Rumus: Bunga = (Principal * Rate * Time) / 100
    bunga = (principal * rate * time) / 100
    total = principal + bunga
    return bunga, total

print("=== KALKULATOR BUNGA SEDERHANA ===")

try:
    p = float(input("Masukkan uang pokok (Principal): "))
    r = float(input("Masukkan suku bunga per tahun (%): "))
    t = float(input("Masukkan jangka waktu (Tahun): "))

    bunga, total = hitung_bunga_sederhana(p, r, t)

    print("\n--- HASIL PERHITUNGAN ---")
    print(f"Total Bunga            : {bunga:.2f}")
    print(f"Total Uang + Bunga (A) : {total:.2f}")

except ValueError:
    print("Mohon masukkan angka yang valid!")