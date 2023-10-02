resume / rangkuman materi state management provider

State management provider adalah teknik pengelolaan data dalam aplikasi Flutter. Ini memungkinkan data yang dapat dibaca dan diubah selama widget aktif. Penggunaan global state penting karena memungkinkan penggunaan data di seluruh widget. Untuk menggunakan state management provider, Anda perlu menginstal library "provider".

Provider adalah paket Flutter yang memfasilitasi pengelolaan state dan penyediaan data ke widget di aplikasi. Untuk menggunakannya, Anda perlu mengimpor package "provider/provider.dart". Model data yang akan digunakan sebagai state harus meng-extend class "ChangeNotifier". Data dari model tersebut dapat diakses dalam widget tree menggunakan "Provider.of<T>(context)" atau "Consumer<T>(builder: (context, model, child) {})". Dengan "ChangeNotifierProvider", data dari model dapat diakses oleh widget yang membutuhkannya.

Beberapa fungsi penting dalam provider meliputi:

- **Provider**: Digunakan untuk memberikan instance dari model ke widget-tree.
- **ChangeNotifier**: Kelas yang menambah dan menghapus listeners, digunakan dengan cara meng-extends dan memanggil "notifyListeners()" untuk memberi tahu widget bahwa ada perubahan data.
- **Consumer**: Widget yang mendengarkan perubahan pada kelas yang meng-implementasi ChangeNotifier. Penting untuk meletakkan Consumer pada bagian widget tree sekecil mungkin. Properti "builder" pada Consumer berisi context, model, dan child.

Dengan menggunakan state management provider, pengelolaan data dalam Flutter menjadi lebih efisien dan mudah diakses oleh berbagai bagian dari aplikasi.
