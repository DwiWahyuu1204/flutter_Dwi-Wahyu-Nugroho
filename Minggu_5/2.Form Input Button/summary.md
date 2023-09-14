resume/ringkasan materi form input button

1. form, form merupakan widget yang digunakan untuk mengumpulkan informasi dari pengguna.form disimpan menggunakan GlobalKey<FormState>.berikut cara membuatknya :

Properti GlobalKey:
var GlobalKey<FormState> \_formKey = GlobalKey<FormState>();

Untuk Menggunakanya :
Form(
key: \_formKey, // Set global key pada formulir
child: Widget yang akan dibuat.);

2.  Input : komponen yang digunakan untuk mengumpulkan data dari pengguna melalui berbagai jenis masukan. widget input ini memungkinkan pengguna untuk memasukkan teks, angka, atau pilihan lainnya,seperti radio button,checkbox ataupun dropdown.
    untuk memasukan text atau angka atau isian data dari pengguna dapat menggunakan textField.berikut cara pembuatanya: - Text Field :
    properti menggunakan textediting controller untuk menyimpan data dari pengguna:

        	 TextEditingController _controller = TextEditingController();

        	Kemudian dalam bagian wiget TextField masukan Controller yang
        	sudahdi buat :
        	 TextField(controller : _controller,);

        - Radio Button
        	Properti: var radioValue = ' ';
        	Build : Radio<String>(
        			value : 'Laki-Laki',
        			groupValue:radioValue,
        			onChange: (String? value){
        			setState((){
        			radioValue= value ?? '';
        			});
        			})
        - Checbox = yaitu memberikan opsi kepda pengguna dan dapat memilih beberapa opsi
        	properti : var checkValue = false; data diambil menggunakan properti bool.
        	build : Checkbox(
        			value : checkValue,
        			onChange:(bool? value){
        			setState((){
        			checkValue = Value ?? false;})})
        - Dropdown = yaitu memberkan opsi kepada pengguna tetapi opsi tersebut tidak tampil diawal,untuk menampilkanya dengan cara di tekan / di klik
        	properti: var dropdownValue = 0;
        	Build: DropdownButton(
        			value : dropdownValue,
        			onChange: (int ? value){setState((){dropdownValue = ?? 0 ;})},
        			items: const [
        				DropdownMenuItem(value = 0,child : Text('Pilihan...'))
        				DropdownMenuItem(value = 1,child : Text('Pilihan1'))
        				DropdownMenuItem(value = 2,child : Text('Pilihan2'))
        				DropdownMenuItem(value = 3,child : Text('Pilihan3'))
        			])

3.Button : merupakan tombol yang melakukan sesuatu ketika ditekan,terdapat jenis jenis button yaitu ada elevatedButton dan ada juga iconButton.

    - ElevatedButton ini berbentuk sesuai dengan keinginan dan dapat menampilkan text didalamnya ketika di tekan atau di klik maka akan menjalankan onPressed.

    - IconButton yaitu tombol yang berbentuk icon dan sama seperti elevated button ketika di tekan maka akan menjalankan onPressed
