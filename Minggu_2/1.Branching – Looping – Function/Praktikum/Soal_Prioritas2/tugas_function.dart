// Fungsi untuk menghitung luas lingkaran
double hitungLuasLingkaran(double jariJari) {
  return 3.14 * jariJari * jariJari;
}

// Fungsi utama
void main() {
  double jariJariLingkaran = 5.0;
  double luas = hitungLuasLingkaran(jariJariLingkaran);

  print("Luas lingkaran dengan jari-jari $jariJariLingkaran adalah $luas ");
}
