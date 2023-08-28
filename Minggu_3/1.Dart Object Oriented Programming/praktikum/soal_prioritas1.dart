class Hewan {
  String nama;
  double berat;

  Hewan(this.nama, this.berat);
}

class Mobil {
  double kapasitasTotalBerat;
  List<Hewan> muatan = [];

  Mobil(this.kapasitasTotalBerat);

  bool cekKapasitasCukup(Hewan hewan) {
    double totalBeratMuatan =
        muatan.map((hewan) => hewan.berat).fold(0, (a, b) => a + b);
    return totalBeratMuatan + hewan.berat <= kapasitasTotalBerat;
  }

  void tambahMuatan(Hewan hewan) {
    if (cekKapasitasCukup(hewan)) {
      muatan.add(hewan);
      print("${hewan.nama} berhasil ditambahkan ke dalam muatan.");
    } else {
      print(
          "Kapasitas muatan tidak mencukupi untuk menambahkan ${hewan.nama}.");
    }
  }
}

void main() {
  Mobil mobil = Mobil(500);
  Hewan hewan1 = Hewan("Singa", 300);
  Hewan hewan2 = Hewan("Gajah", 500);
  Hewan hewan3 = Hewan("Kuda", 200);

  mobil.tambahMuatan(hewan1);
  mobil.tambahMuatan(hewan2);
  mobil.tambahMuatan(hewan3);
}
