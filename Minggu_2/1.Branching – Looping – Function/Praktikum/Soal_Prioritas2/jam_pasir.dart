import 'dart:io';

void main() {
  int tinggi = 5; // tinggi dari jam pasir

  // Membuat bagian atas jam pasir
  for (int i = 0; i < tinggi; i++) {
    for (int j = 0; j < i; j++) {
      stdout.write(" ");
    }
    for (int k = 0; k < 2 * (tinggi - i) - 1; k++) {
      stdout.write("0");
    }
    print("");
  }

  // Membuat bagian bawah jam pasir
  for (int i = tinggi - 2; i >= 0; i--) {
    for (int j = 0; j < i; j++) {
      stdout.write(" ");
    }
    for (int k = 0; k < 2 * (tinggi - i) - 1; k++) {
      stdout.write("0");
    }
    print("");
  }
}
