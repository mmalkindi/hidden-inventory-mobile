import 'package:flutter/material.dart';
import 'package:hidden_inventory/widgets/left_drawer.dart';
import 'package:hidden_inventory/widgets/item_card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hidden Inventory',
        ),
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'Welcome back!', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((OptionsItem item) {
                  // Iterasi untuk setiap item
                  return ItemCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OptionsItem {
  final String name;
  final IconData icon;
  final Color color;

  OptionsItem(this.name, this.icon, this.color);
}

final List<OptionsItem> items = [
  OptionsItem(
      "Lihat Item", Icons.checklist, const Color.fromRGBO(106, 150, 212, 1.0)),
  OptionsItem("Tambah Item", Icons.add_shopping_cart,
      const Color.fromRGBO(141, 106, 212, 1.0)),
  OptionsItem("Logout", Icons.logout, const Color.fromRGBO(209, 77, 77, 1.0)),
];
