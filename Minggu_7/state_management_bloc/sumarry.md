resume/rangkuman materi statemanagement block

declarative
setstate
provider
bloc

declarative ui flutter mmemiiki sifat declarative yang artinya flutter,membangun uinya pada screen untuk mencerminkan keadaan state saat ini

state ini adalah ketika sebuah widegt sedang akktif dan widget tersebut menyimpan data di memori
ada 2 jenis setstate dalam flutter yaitu ephemeral state dan app state

ephemeral state yaitu digunakan ketika tidak ada bagian ain pada widget tree yang membutuhkan untuk mengakses data widget nya contoh : - pageview - bottomNavugationBar - switch button.
tidak perlu state management yang kompleks
dan hanya membutuhkan statefulwidget dengan menggunakan fungsi setstate().

appstate yaitu digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget,contohnya : - login info - pengaturan preferensi pengguna. - keranjang belanja dimana informasi yang pengguna pilih di suatu screen yang mana informasi itu akan muncul di screen yang berbeda

pendekatan state management

    - setstate lebih cocok penggunaanya pada ephemeral state
    - provider = penggunaanya untuk state management yang lebih kompleks seperti app state,pendekatan ini direkomendasikan oleh tim flutter karena mudah di pelajari.
    - Bloc = menggunakan pola stream/observable,untuk memisahkan ui dengan bisnis logicnya.

provider :

    - changeNotifier adalah class yang menambah dan menghapus listeners,digunakan dengan cara meng-extends dan memanggil notifylisteners(),fungsi yang memberitahu widget yang menggunakan state bahwa terjadi perubahan data sehingga uinya harus dibangun ulang.
    - consumer = widget yang mendengarkan perubahan kelas yang mengimplementasikan changenotifier.untuk membangun ulang widget yang dibungkus consumer saja,dan penting untuk meletakan consumer pada lingkup sekecil mungkin dan membutuhkan properti builder yang berisi contex,model dan child

bloc : untuk memisahkan antara bussines logic dan uinyaa kenapa harus menggunkan bloc yaitu simple,powerful,testable cara kerja bloc ya itu menerima event sebagai input dianalisa dan dikelola di dalam bloc dan menghasilkan state sebagai output.

ui > event = sebuah interaksi / perintah / input .> bloc(logic) > request data > response data > bloc > state merupakan sebuah kondisi(output) > ui
