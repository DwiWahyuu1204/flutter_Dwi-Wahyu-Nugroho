Resume Materi Mvvm dan Api

mvvm arcitectur : adalah model-view-view model yang berguna untuk memisahkan logic dengan tampilan view ke dalam viewModel

keuntungan 1 : jika ada beberapa tampilan yang memerlukan alur logic yang sama ,mereka bisa menggunakan view model yang sama.
keuntungan 2 : mudah dirawat karena pekerjaann terkait tampilan tidak tertumpuk bersama logic
keuntungan 3 : pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic sehingga dapat meningkatkan produktivitas pada pengujian

melakukan mvvm :

- struktur direktori

  - model memiliki 2 bagian yaitu bentuk data yang akan digunakan dan sumber dari data tersebut
  - tiap screen diletakan dalam sebuah direktori yang di dalamnya terdapat vie dan view model

- model

  - bentuk data yang akan digunakan ,dibuat dalam bentuk class
  - data-data yang dimuat,diletakan pada properti

- model api
  - view model : menyimpan data dan logic yang diperlukan,
  - jika widget lain memerlukan logic yang sama ,dapat menggunakan view model ini juga.

Materi Api

deskripsi : Arsitekturl yang memisahkan tampilan dengan proses bisnis , Bagian tampilan dengan proses bisnis berkirim data melalui http request.

apa itu http : http merupakan protokol yang digunakan untuk berkirim data pada internet biasanya data tersebut berbentuk media web,
pola komunikasi 1. Client mengirimkan request, 2. Server mengolah dan membahas dengan memberikan response
struktur request : 1. URL
2.Method (post,get,put,delete)
3.header
4.body
struktur response : 1. status code
2.header
3.body
library Dio
terdapat serialisasi json dan deserialisasi json
serealisasi json merupakan mengubah strukrur data ke dalam bentuk json menggunakan fungsi jsonEncode sedangkan deserialisasi merupakan mengubah bentuk json ke struktur data menggunakan fungsi jsonDecode
