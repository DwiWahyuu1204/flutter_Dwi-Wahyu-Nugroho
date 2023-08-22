void main() {
  print("Tabel Perkalian\n");

  // Ukuran tabel dengan sampel input (9)
  int row = 9;
  int column = 9;

  // Mencetak header kolom
  print("   |" +
      List.generate(column, (index) => "${index + 1}".padLeft(4)).join());
  print("-" * (5 + column * 4));

  // Mencetak isi tabel
  for (int i = 1; i <= row; i++) {
    print("${i.toString().padLeft(3)}|" +
        List.generate(column, (j) => "${(i * (j + 1)).toString().padLeft(4)}")
            .join());
  }
}
