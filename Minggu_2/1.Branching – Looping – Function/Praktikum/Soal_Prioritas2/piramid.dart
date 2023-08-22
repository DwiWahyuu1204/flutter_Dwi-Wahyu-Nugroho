import 'dart:io';

void main() {
  int height = 7; // tinggi dari piramid

  for (int i = height; i >= 0; i--) {
    for (int j = 0; j < i; j++) {
      stdout.write(" ");
    }
    for (int k = 0; k < 2 * (height - i) - 1; k++) {
      stdout.write("*");
    }
    print("");
  }
}
