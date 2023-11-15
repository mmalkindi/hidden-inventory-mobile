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

1. `AspectRatio`: Digunakan untuk mengatur ukuran *child* ke suatu aspect ratio (misal: Cover album dengan aspect ratio 1:1)
2. `Center`: Digunakan untuk meletakkan *child* ke tengah dari parentnya. (misal: teks yang berada di tengah gambar)
3. `Container`: Widget serbaguna yang dapat mengatur posisi, dekorasi, maupun ukuran dari childnya
4. `Padding`: Digunakan untuk memberi *inset* pada *child*. (misal: teks dengan padding tertentu supaya tidak menyentuh ujung layar)
5. `Column`: Digunakan untuk menampilkan *children* secara vertikal. (misal: mengatur *widget* lagu-lagu di suatu *playlist*)
6. `Row`: Digunakan untuk menampilkan *children* secara horizontal. (misal: mengatur *widget* controls di bagian bawah *video*)
7. `GridView`: Digunakan untuk menampilkan *children* pada suatu *grid* yang sama ukurannya dan diatur urutannya (misal: tombol angka di aplikasi kalkulator)
8. `ListView`: Digunakan untuk menampilkan *children* pada suatu *list* linear yang dapat di*scroll*
9. `Stack`: Digunakan untuk menampilkan *children* yang dapat *overlap* satu sama lainnya.

> Q: Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

Untuk form ini, saya hanya menggunakan `TextFormField` sebagai elemen *input* pada setiap field yang ada di Form `item_add_form.dart`.
`TextFormField` sangat *versatile* sehingga dapat menerima semua *input* yang dibutuhkan untuk membuat Item baru (nama, *amount*, harga, deskripsi, dan *tags*).

Tiap widget `TextFormField` memiliki:

1. `labelText` sebagai *label* untuk field input tersebut
2. `border` untuk memberi *rounded corners* pada widget
3. `keyboardType` untuk menentukan tipe *keyboard* yang akan muncul pada layer *user* ketika mengisi field
4. `onChanged` untuk `set` state yang relevan terhadap field input
5. `validator` untuk memvalidasi dan memberikan pesan error apabila input yang diberikan tidak valid
6. `autovalidateMode` supaya input dapat divalidasi pada *user interaction*

> Q: Bagaimana penerapan *clean architecture* pada aplikasi Flutter?

*Clean architecture* pada pengembangan aplikasi Flutter melibatkan pemisahan komponen-komponen yang ada ke folder-folder yang relevan,
sehingga pengembangan aplikasi dapat lebih terorganisir. *Widget* dan *model* yang telah dibuat dapat digunakan kembali (*reusable code*)
sehingga mengurangi *duplicate code* dan memudahkan update pada komponen-komponen tersebut.

Dalam aplikasi flutter ini, saya menerapkan *clean architecture* sederhana dengan memisahkan file ke folder `screens` dan `widgets`.
Folder `widgets` menampung kode *widget* yang dapat digunakan kembali oleh file lainnya.
Folder `screens` menampung kode halaman yang akan ditampilkan di aplikasi dan dapat menggunakan *widget* yang sudah ada di folder `widgets`.

> Q: Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

1. Membuat folder `widgets` dan `screens` di subdirektori `lib`
2. Membuat file `left_drawer.dart` yang berada di `lib/widgets`. File ini akan menampung widget drawer yang dapat digunakan oleh `screen` lainnya.
3. Membuat file `item_add_form.dart` di `lib` yang memuat halaman Form tambah Item.
   1. Saat tombol "Save" di*tap*, akan dilakukan validasi dan dialog menampilkan hasil input muncul (apabila input valid semua).
4. Menambahkan fitur navigasi dengan menambahkan `left_drawer.dart` sebagai drawer di `menu.dart` dan `item_add_form.dart`.
5. Menambahkan navigasi menggunakan `Navigator.push()` pada tombol "Tambah Item" di halaman utama.
6. Merapihkan file `menu.dart` dengan mengeluarkan class `ItemCard` ke file `item_card.dart`
7. Merapihkan struktur file yang ada di subdirektori `lib`.
   1. File `item_add_form.dart` dan `menu.dart` dipindahkan ke `lib/screens`
   2. File `item_card.dart` dipindahkan ke `lib/widgets`

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
