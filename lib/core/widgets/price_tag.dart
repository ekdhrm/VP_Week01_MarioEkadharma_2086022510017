import 'package:flutter/material.dart';

class PriceTag extends StatelessWidget {
  const PriceTag({super.key, required this.name, required this.amount, this.currency = 'Rp'});

  final String name;
  final int amount; // final — a widget describes, it does not mutate
  final String currency;

  @override
  Widget build(BuildContext context) {
    return Text('$name: $currency ${amount.toString()}');
  }
}
