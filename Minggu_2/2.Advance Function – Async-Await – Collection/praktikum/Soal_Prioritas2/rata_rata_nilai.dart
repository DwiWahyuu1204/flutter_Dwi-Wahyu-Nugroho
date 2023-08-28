void main() {
  List<int> nilai = [7, 5, 3, 5, 2, 1];

  int total = 0;
  for (int nilaiTotal in nilai) {
    total += nilaiTotal;
  }

  double rataRata = total / nilai.length;
  int rataRataBulat = rataRata.ceil(); // Pembulatan ke atas

  print("Nilai: $nilai");
  print("Total: $total");
  print("Rata-rata: $rataRataBulat");
}
