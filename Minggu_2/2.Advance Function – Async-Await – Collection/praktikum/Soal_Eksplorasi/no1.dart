void main() {
  List<String> inputData = [
    'amuse',
    'tommy kaira',
    'spoon',
    'HKS',
    'litchfield',
    'amuse',
    'HKS'
  ];
  List<String> uniqueData = hapusDataSama(inputData);

  print('Data unik: $uniqueData');
}

List<String> hapusDataSama(List<String> inputList) {
  Set<String> unikSet = Set<String>();
  List<String> unikList = [];

  for (String item in inputList) {
    if (!unikSet.contains(item)) {
      unikSet.add(item);
      unikList.add(item);
    }
  }

  return unikList;
}
