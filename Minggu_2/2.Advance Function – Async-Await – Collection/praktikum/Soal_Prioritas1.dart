Future<List<int>> soalPrioritas1(List<int> data, int pengali) async {
  List<int> hasil = [];

  for (int nilai in data) {
    await Future.delayed(Duration(seconds: 1));
    int perkalian = nilai * pengali;
    hasil.add(perkalian);
  }

  return hasil;
}

void main() async {
  List<int> inputData = [1, 2, 3, 4, 5];
  int pengali = 2;
  print("Data Awal : $inputData");

  List<int> hasil = await soalPrioritas1(inputData, pengali);
  print("Hasil Proses dengan pengali $pengali adalah : $hasil");
}
