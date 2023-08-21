import 'dart:math';

class Tabung {
  double jariJari;
  double tinggi;

  Tabung(this.jariJari, this.tinggi);

  double hitungVolume() {
    return pi * jariJari * jariJari * tinggi;
  }
}

void main() {
  Tabung tabung = Tabung(5, 10);

  print('Volume tabung: ${tabung.hitungVolume()}');
}
