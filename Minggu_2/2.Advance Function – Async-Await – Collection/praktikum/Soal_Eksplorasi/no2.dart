void main() {
  List<String> dataList = [
    'js',
    'js',
    'js',
    'golang',
    'python',
    'js',
    'js',
    'golang',
    'rust'
  ];
  Map<String, int> frekuensiMap = hitungFrekuensi(dataList);

  frekuensiMap.forEach((data, frekuensi) {
    print('$data : $frekuensi');
  });
}

Map<String, int> hitungFrekuensi(List<String> dataList) {
  Map<String, int> frekuensiMap = {};

  for (String data in dataList) {
    if (frekuensiMap.containsKey(data)) {
      frekuensiMap[data] = frekuensiMap[data]! + 1;
    } else {
      frekuensiMap[data] = 1;
    }
  }

  return frekuensiMap;
}
