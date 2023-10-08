rangkuman / resume materi storage

storage :
1.penyimpanan lokal
2.shared preferences
3.local database(sqlite)

penyimpanan lokal : untuk efisiensi penggunaan data internet.ada beberapa cara implementasi penyimpanan lokal contoh seperti :

- shared preferences
- local database

shared preferences : untuk menyimpan data yang sederhana ,penyimpanan dengan format key-value,menyimpan tipe data dasar seperti text,angka,dan boolean.contoh penggunaan shared preferences seperti menyimpan data login dan menyimpan riwayat pencarian.

local database : digunkan untuk menyimpan data dalam jumlah besar pada local device dan bersifat privat,menggunakan sqlite database melalui package sqflite,sqlite adalah database open source yang mendukung insert read update dan rimove data.

implementasi sqlite harus menambahkan package sqflite dan path pada pubspec yaml dan mengimport packagenya

untuk menyimpan nilai untuk database local wajib menggunakan data model terdapat fungsi toMap dan formMap
