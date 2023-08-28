class Book {
  final int id;
  final String judul;
  final String penerbit;
  final double harga;
  final String kategori;

  Book({
    required this.id,
    required this.judul,
    required this.penerbit,
    required this.harga,
    required this.kategori,
  });
}

class Bookstore {
  List<Book> _books = [];

  void tambahBuku(Book book) {
    _books.add(book);
  }

  List<Book> dapatkanSemuaBuku() {
    return _books;
  }

  void hapusBuku(int id) {
    _books.removeWhere((book) => book.id == id);
  }
}

void main() {
  Bookstore tokoBuku = Bookstore();

  // Menambahkan buku
  tokoBuku.tambahBuku(Book(
    id: 1,
    judul: "cinta lama yang bersemi kembali",
    penerbit: "Bloomsbury",
    harga: 15.99,
    kategori: "romance",
  ));

  tokoBuku.tambahBuku(Book(
    id: 2,
    judul: "belajar bersama alterra academy",
    penerbit: "Dwi Wahyu",
    harga: 12.99,
    kategori: "pendidikan",
  ));

  // Mendapatkan semua data buku
  List<Book> semuaBuku = tokoBuku.dapatkanSemuaBuku();
  print("Daftar semua buku:");
  for (var book in semuaBuku) {
    print("${book.judul} - ${book.penerbit} - ${book.harga}");
  }

  // Menghapus buku dengan ID tertentu
  int hapusIdBuku = 1;
  tokoBuku.hapusBuku(hapusIdBuku);
  print("Buku dengan ID $hapusIdBuku telah dihapus.");

  // Menampilkan data buku setelah penghapusan
  semuaBuku = tokoBuku.dapatkanSemuaBuku();
  print("Daftar semua buku setelah penghapusan:");
  for (var book in semuaBuku) {
    print("${book.judul} - ${book.penerbit} - ${book.harga}");
  }
}
