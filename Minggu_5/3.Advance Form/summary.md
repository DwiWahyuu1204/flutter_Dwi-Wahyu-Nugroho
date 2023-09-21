resume/ringkasan materi Advance form Input

dalam materi ini terdapat 3 yang akan di bahas yaitu ada date picker,Color picker dan file picker.

1.date picker merupakan widget dimana user dapat menginputkan sebuah date atau tanggal.
cara membuat date picker : - menggunakan fungsi bawaan flutter showDatePicker fungsi showDatePicker memiliki tipe data future.
Contoh code program :

final SelectData = await showDataPicker(
  context : context,
  initialDate : currentDate,
  firstDate : DateTime(1945),
  lastDate : DateTime(currenDate.year + 5)
);

dan juga dapat menggunakan library intl dapat ditambahkan pada pubspec.yaml.

2.Color Picker adalah widget yang hampir sama dengan date picker tetapi pada bagian ini hanya untuk menginputkan warna saja.untuk membuat color picker dapan menggunakan library flutter_colorpicker.
Cara Membuat Color Picker :
![buttonAdvanceForm](https://github.com/DwiWahyuu1204/flutter_Dwi-Wahyu-Nugroho/assets/133838235/b5379bc3-d106-4b4b-acd9-d8398f9b49e0)


3.file picker yaitu widget yang mempunyai kemampuan untuk mengakses storage mimilih file dan membuka file cara membuat file picker dapat menggunakan library file picker dan open file.
cara membuat file picker :
![filepicker](https://github.com/DwiWahyuu1204/flutter_Dwi-Wahyu-Nugroho/assets/133838235/616312a7-3609-41f0-841c-67334c89615a)


