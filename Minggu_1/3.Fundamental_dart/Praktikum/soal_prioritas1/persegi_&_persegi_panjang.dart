// Kelas untuk menghitung keliling dan luas persegi
class Persegi {
  double sisi;

  Persegi(this.sisi);

  double hitungLuas() {
    return sisi * sisi;
  }

  double hitungKeliling() {
    return 4 * sisi;
  }
}

// Kelas untuk menghitung keliling dan luas persegi panjang
class PersegiPanjang {
  double panjang;
  double lebar;

  PersegiPanjang(this.panjang, this.lebar);

  double hitungLuas() {
    return panjang * lebar;
  }

  double hitungKeliling() {
    return 2 * (panjang + lebar);
  }
}

void main() {
  // Contoh penggunaan untuk persegi
  Persegi persegi = Persegi(5);
  print('Luas persegi: ${persegi.hitungLuas()}');
  print('Keliling persegi: ${persegi.hitungKeliling()}');

  // Contoh penggunaan untuk persegi panjang
  PersegiPanjang persegiPanjang = PersegiPanjang(4, 6);
  print('Luas persegi panjang: ${persegiPanjang.hitungLuas()}');
  print('Keliling persegi panjang: ${persegiPanjang.hitungKeliling()}');
}
