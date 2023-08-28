class Kalkulator {
  double tambah(double a, double b) {
    return a + b;
  }

  double kurang(double a, double b) {
    return a - b;
  }

  double kali(double a, double b) {
    return a * b;
  }

  double bagi(double a, double b) {
    if (b != 0) {
      return a / b;
    } else {
      throw ArgumentError("Cannot divide by zero");
    }
  }
}

void main() {
  Kalkulator kalculator = Kalkulator();

  double angka1 = 10;
  double angka2 = 5;

  print("hasil penjumlahan: ${kalculator.tambah(angka1, angka2)}");
  print("hasil pengurangan: ${kalculator.kurang(angka1, angka2)}");
  print("hasil perkalian: ${kalculator.kali(angka1, angka2)}");

  try {
    print("hasil pembagian: ${kalculator.bagi(angka1, angka2)}");
  } catch (e) {
    print(e);
  }
}
