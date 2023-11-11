# Hidden Inventory

Hidden Inventory. Now powered by Flutter.

```credential
Nama  : Muhammad Milian Alkindi
Kelas : PBP A
```

| Jump ke tugas |
| :-: |
| [Tugas 7](#tugas-7-elemen-dasar-flutter) |
| [Tugas 8](#tugas-8-flutter-navigation-layouts-forms-and-input-elements) |

## Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements

> Q: Jelaskan perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`, disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

`Navigator.push()` akan menambah suatu `Route` ke route stack yang berada di Navigator.
Method ini tidak mengubah riwayat `Route` yang telah dilewati, sehingga bisa digunakan `Navigator.pop()` untuk kembali ke halaman sebelumnya.

Sementara itu, `Navigator.pushReplacement()` akan menghapus route stack yang sudah ada dan menambahkan `Route` ke route stack tersebut.
Method ini menghapus riwayat `Route` sebelumnya, sehingga dianggap `Route` yang di*push* adalah HEAD dari route stack yang baru.

> Q: Jelaskan masing-masing *layout* widget pada Flutter dan konteks penggunaannya masing-masing!

A: ...

> Q: Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

Untuk form ini, saya hanya menggunakan `TextFormField` sebagai elemen *input*.
`TextFormField` sangat *versatile* dan dapat mengambil semua *input* yang dibutuhkan dengan baik (nama, *amount*, harga, deskripsi, dan *tags*).

> Q: Bagaimana penerapan *clean architecture* pada aplikasi Flutter?

A: ...

> Q: Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

A: ...

## Tugas 7: Elemen Dasar Flutter

> Q: Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

*Stateless* widget adalah widget yang tidak memiliki *state*/**statis**.
Widget yang bertipe *stateless* tidak akan mengubah tampilannya.  
Contohnya: `Icon`, `IconButton`, dan `Text`

*Stateful* widget adalah widget yang memiliki *state*/**dinamis**.
Widget *stateful* dapat mengubah tampilannya apabila terjadi interaksi dengan *user* atau
ketika mendapatkan data; layaknya memproses *response* dari *event*.  
Contohnya: `Checkbox`, `Radio`, `Slider`, dan `Form`

> Q: Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

Beberapa widget yang saya gunakan untuk menyelesaikan tugas ini:

1. `StatelessWidget`: mendefinisikan widget yang bersifat *stateless*
2. `MaterialApp`: *base widget* supaya dapat menggunakan Material widget
3. `Scaffold`: mengimplementasi *basic* layout Material Design (dengan appbar dan body)
4. `AppBar`: menampilkan judul aplikasi di bagian paling atas beserta  tombol navigasi *back*
5. `SingleChildScrollView`: menampilkan *child* sehingga bisa scrollable apabila container terlalu kecil
6. `Padding`: menambahkan *padding* pada *child*
7. `GridView`: menampilkan *child* dalam display *grid*
8. `Column`: menampilkan *child* secara vertikal
9. `Row`: menampilkan *child* secara horizontal
10. `Center`: menampilkan *child* ditengah
11. `Container`: menampilkan *child* dan menambahkan *padding* dan *margin*
12. `Text`: menampilkan teks
13. `Icon`: menampilkan material *icon*
14. `Material`: menampilkan *child* dengan style Material Design
15. `InkWell`: menampilkan *child* dengan area yang responsif input *tap*
16. `Snackbar`: menampilkan Snackbar--- widget dibagian bawah layar yang menampilkan pesan singkat

> Q: Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

1. Membuat flutter project baru dengan `flutter create hidden_inventory`
2. Memindahkan `MyHomePage` ke file baru `lib/menu.dart` dan menggantinya menjadi *stateless widget*. `lib/menu.dart` akan di*import* oleh `lib/main.dart`
3. Menambahkan *class* `OptionsItem` untuk mendefinisikan suatu tombol opsi (text, icon, color) dan `ItemCard` untuk menggambar suatu widget Material dengan data objek `OptionsItem`
4. Menambahkan `Scaffold`, `AppBar`, `SingleChildScrollView` dan *widget* lainnya di function `Widget build()` milik `MyHomePage`. *Widget-widget* tersebut akan mendefinisikan layout dan menampilkan tombol yang dibuat menggunakan `ItemCard`.
5. Menambahkan floating `Snackbar` ke `ItemCard` sehingga muncul sebuah pesan ketika tombol di*tap*
6. Dan terakhir, menambahkan `darkTheme` ke `App` yang berada di `lib/main.dart` supaya aplikasi dapat ditampilkan dengan *dark mode*

---
[↑ Back to top](#hidden-inventory)
