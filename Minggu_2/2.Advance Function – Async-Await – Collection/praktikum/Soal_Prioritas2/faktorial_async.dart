import 'dart:async';

void main() {
  final int angka = 5;
  print('Menghitung faktorial dari $angka');

  hitungFaktorial(angka).then((hasil) {
    print('Faktorial dari $angka adalah $hasil');
  }).catchError((error) {
    print('Terjadi kesalahan: $error');
  });
}

Future<int> hitungFaktorial(int n) async {
  if (n < 0) {
    throw Exception('Bilangan harus non-negatif');
  }

  if (n == 0 || n == 1) {
    return 1;
  }

  int result = 1;
  for (int i = 2; i <= n; i++) {
    result *= i;
    await Future.delayed(Duration(seconds: 1));
  }

  return result;
}
