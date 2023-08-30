abstract class Matematika {
  int hasil();
}

class PersekutuanTerkecil implements Matematika {
  int x, y;

  PersekutuanTerkecil(this.x, this.y);

  @override
  int hasil() {
    int a = x, b = y;
    while (b != 0) {
      int t = b;
      b = a % b;
      a = t;
    }
    return a;
  }
}

class PersekutuanTerbesar implements Matematika {
  int x, y;

  PersekutuanTerbesar(this.x, this.y);

  @override
  int hasil() {
    int a = x, b = y;
    while (a != b) {
      if (a > b) {
        a = a - b;
      } else {
        b = b - a;
      }
    }
    return a;
  }
}

void main() {
  PersekutuanTerkecil ptk = PersekutuanTerkecil(12, 18);
  print('Persekutuan Terkecil dari 12 dan 18 adalah: ${ptk.hasil()}');

  PersekutuanTerbesar ptb = PersekutuanTerbesar(24, 36);
  print('Persekutuan Terbesar dari 24 dan 36 adalah: ${ptb.hasil()}');
}
