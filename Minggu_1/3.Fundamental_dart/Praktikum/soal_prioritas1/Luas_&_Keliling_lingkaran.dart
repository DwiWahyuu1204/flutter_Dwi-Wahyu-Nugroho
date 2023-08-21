import 'dart:math';

class Lingkaran {
  double jariJari;

  Lingkaran(this.jariJari);

  double hitungLuas() {
    return pi * jariJari * jariJari;
  }

  double hitungKeliling() {
    return 2 * pi * jariJari;
  }
}

void main() {
  Lingkaran lingkaran = Lingkaran(7);

  print('Luas lingkaran: ${lingkaran.hitungLuas()}');
  print('Keliling lingkaran: ${lingkaran.hitungKeliling()}');
}
