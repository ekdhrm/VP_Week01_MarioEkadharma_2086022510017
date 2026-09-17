import 'package:flutter/material.dart';
import 'package:warung_digital/core/models/menu_item.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.item, required this.onAdd});

  final MenuItem item;
  final VoidCallback onAdd;      // the event goes UP; the card decides nothing

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.name),
      subtitle: Text('Rp ${item.price}'),
      trailing: IconButton(icon: const Icon(Icons.add), onPressed: onAdd),
    );
  }
}