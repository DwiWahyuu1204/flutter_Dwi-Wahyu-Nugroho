bool isPalindrome(String word) {
  String reversed = word.split('').reversed.join('');
  return word == reversed;
}

void main() {
  String kata = 'mobil balap';

  if (isPalindrome(kata)) {
    print('$kata adalah  palindrom.');
  } else {
    print('$kata bukan palindrom.');
  }
}
