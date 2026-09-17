import 'package:flutter/material.dart';
import 'package:warung_digital/core/widgets/price_tag.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // the Material page skeleton
      appBar: AppBar(title: const Text('Warung Digital')),
      body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // ini saya dapat dari StackOverflow, biar kolomnya di tengah (https://stackoverflow.com/questions/67420771/completely-center-widget-in-flutter)
            children: [
              PriceTag(name: 'Nasi Goreng', amount: 12000),
              PriceTag(name: 'Nasi Padang Telur Dadar', amount: 15000),
              PriceTag(name: 'Nasi Kuning Cakalang', amount: 13000),
            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
