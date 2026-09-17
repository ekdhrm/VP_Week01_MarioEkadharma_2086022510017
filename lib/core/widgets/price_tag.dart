import 'package:flutter/material.dart';

class PriceTag extends StatelessWidget {
  const PriceTag({super.key, required this.amount, this.currency = 'Rp'});

  final int amount; // final: a description cannot be edited
  final String currency;

  @override
  Widget build(BuildContext context) => Text('$currency $amount');
}
