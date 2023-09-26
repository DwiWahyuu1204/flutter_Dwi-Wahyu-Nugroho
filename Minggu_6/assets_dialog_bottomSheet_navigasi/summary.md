resume/rangkuman materi asset_dialog_bottomsheet

Untuk memasukan asset lokal pada pubspec.yaml.
pubspec.yaml terletak pada root project,untuk mengidentifikasi asset yang dibutuhkan aplikasi.
gunakan karatker "/" untuk memasukan semua asset dibawah satu directory name contoh :
terdapat alternatif untuk menggunakan gambar menggunakan asset image ya itu dengan cara memasukan di pubspec.yaml
di bagian asset ketikan assets/images/
ketika gambar banyak klompokan pada folder kemudian tuliskan di asset yaitu asset/images/namafolder.
terdapat juga alternatif lain untuk menggunakan asset image dengan cara membuat class imageConstan atau dapat menggunakan Extension flutter assets gen untuk memnampilkan file svg dapat menggunakan library flutter_svg.

Image

Berfungsi untuk menampilkan gambar.flutter mendukung format gambar seperti jpeg,webp,gif,png,web/gif,bmp, dan wbmp,untuk menampilkan image dapat menggunakan image.asset,Image.Network,Image.file,dan Image.memory.
untuk menggunakan imabge.network dapat menggunakan library cachhedNetworkimage ya berfungsi untuk menghandel image kosong atau error

font

Penggunaan font dengan style tertentu untuk menjadi keunikan pada sebuah aplikasi.untuk mengguakan font dapat membuat folder font dan kemudian masukan kedalam pubspec.yaml untuk memasukanya sama seperti images tetapi terdapat family untuk fontsnya yang di masukan.
ketika akan membuat default font dapat mengaturnya dalam material appnya didalam thema.pada penggunaan font ini juga dapat menggunakan library google_font sehingga tidak memasukan kedalam pubspec.yaml

materi dialog bottom Sheet

alert dialog

Untuk menampilkan sebuah ui untuk menginformasikan pengguna tentang situasi tertentu dan bisa digunakan untuk mendapatkan input dari user,dan membutuhkan fungsi showDialog,untuk penggunaanya dapat digunakan di initstate,onpressed,showdialog membutuhkan builder dan contex

Bottom Sheet

seperti dialog tetapi muncul dari bawh layar dan menggunakan fungsi baawaan flutter,bottom sheet membutuhkan 2 properti ya itu contex dan builder

rangkuman Materi Navigasi

merupakan widget untuk berpindah halaman.

1. navigasi dasar : fungsi navigasi yaitu untuk berpindah ke halaman lain.
   untuk Berpindah halaman ke halaman lain dapat menggunakan dengan navigator.push(),untuk kembali ke halaman sebelumnya dapat dengan menggunakan navigator.pop().kita juga dapat menggunakan widget wilpopScope untuk menghandle layar ketika push atau pop tidak dapat kembali selain dengan menekan tombol kembali.terdapat juga fungsi then dari navigasi.push() untuk menerima valuenya dari navigasi.pop().jangan lupa wajib menghandle eror navigator pop yang mempunyai nilai pada button back yang lain.

terdapat juga - navigator.pushReplacment().digunakan untuk mengganti tampilan saat ini dengan tampilan yang baru tanpa menambahkan tampilan baru ke dalam tumpukan navigasi.

    - Navigator.pushAndRemoveUntil(). berguna ketika Anda ingin mengganti halaman dan menghapus semua halaman yang ada di tumpukan sehingga pengguna tidak dapat kembali ke halaman-halaman sebelumnya.

kelebihan navigator biasa ya itu lebihsederhana mudah dipahami untuk aplikasi sederhana.

kekuranganya : sulit mengelola navigasi di aplikasi yang komples dengan banyak layar dan perubahan status.mengharuskan penggunakan string literasi

2. Navigation dengan named : cara untuk berpindah halaman tetapi menggunakan navigasi.pushnamed. untuk menggunakan navigasi namedroute harus mendaftarkan routnya terlebih hadulu ke initialRoute dan routes pada materialApp.tiap route adalah fungsi yang membentuk halaman.
   untuk mengirimkan data dengan menggunakan navigasu named rout yaitu menggunakan fungsi argument dan untuk mengambil nilainya dengan cara final parameter = ModalRoute.of(contex).settings.argumentsas String;

kelebihan dari navigator named lebih mudah mengelola navigasi di apllikasi yang kompeleks.menggunakan nama untuk mengientifikasi halaman tujuan,dapat dugunakan dengan baik dengan widget materialapp dengan navigasi namedrout.

kekurangan : memerlukan sedikit pekerjaan lebih awal untuk menentukan dan mendefinisikan named routes pada saat konfigurasi aplikasi.
