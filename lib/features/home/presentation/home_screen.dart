import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // the Material page skeleton
      appBar: AppBar(title: const Text('Warung Digital')),
      body: ListView(
        children: const [
          ListTile(title: Text('Nasi Goreng'), trailing: Text('Rp 15.000')),
          ListTile(title: Text('Mie Ayam'), trailing: Text('Rp 13.000')),
          ListTile(title: Text('Nasi Padang'), trailing: Text('Rp 18.000')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
