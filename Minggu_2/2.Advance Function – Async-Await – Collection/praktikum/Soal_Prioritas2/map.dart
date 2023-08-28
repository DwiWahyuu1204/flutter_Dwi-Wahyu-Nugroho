void main() {
  List<List<String>> list = [
    ['Elemen 1', 'Data 1'],
    ['Elemen 2', 'Data 2'],
    ['Elemen 3', 'Data 3'],
    ['Elemen 4', 'Data 4'],
  ];

  // Membuat map menggunakan list tersebut
  Map<String, String> myMap = {};

  for (var index in list) {
    myMap[index[0]] = index[1];
  }

  print(myMap);
}
