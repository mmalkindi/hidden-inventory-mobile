import 'package:flutter/material.dart';
import 'package:hidden_inventory/models/item.dart';

class ItemDetailPage extends StatelessWidget {
  final Item item;

  const ItemDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Itemm Detail',
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 16, right: 16, top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              item.fields.name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            Text(
              'Amount: ${item.fields.amount}',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Price: \$${item.fields.price}',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Tags: ${item.fields.tags}',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Description: ${item.fields.description}',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
