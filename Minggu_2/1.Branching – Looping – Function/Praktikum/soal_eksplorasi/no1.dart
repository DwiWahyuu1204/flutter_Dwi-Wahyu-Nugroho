bool isPrime(int angka) {
  if (angka <= 1) {
    return false;
  }

  if (angka <= 3) {
    return true;
  }

  if (angka % 2 == 0 || angka % 3 == 0) {
    return false;
  }

  for (int i = 5; i * i <= angka; i += 6) {
    if (angka % i == 0 || angka % (i + 2) == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  int cariBilangan = 20;

  if (isPrime(cariBilangan)) {
    print('$cariBilangan adalah bilangan prima.');
  } else {
    print('$cariBilangan bukan bilangan prima.');
  }
}
