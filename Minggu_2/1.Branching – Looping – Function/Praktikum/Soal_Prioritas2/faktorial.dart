void main() {
  List<int> Nilai = [10, 40, 50];

  for (int Nilai in Nilai) {
    int faktorial = hitungFaktorial(Nilai);
    print("Faktorial dari $Nilai adalah $faktorial");
  }
}

int hitungFaktorial(int n) {
  int result = 1;
  for (int i = 2; i <= n; i++) {
    result *= i;
  }
  return result;
}
