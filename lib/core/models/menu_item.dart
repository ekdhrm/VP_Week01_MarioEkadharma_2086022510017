class MenuItem {
  final String name;
  final double price;
  final double? discountPercent;

  MenuItem({required this.name, required this.price, this.discountPercent});

  double finalPrice() {
    if (discountPercent != null) {
      return price - (price * discountPercent! / 100);
    }
    return price;
  }
}

  void main() {
    List<MenuItem> menuItems = [
      MenuItem(name: 'Nasi Goreng', price: 15000, discountPercent: 10),
      MenuItem(name: 'Mie Ayam', price: 12000),
      MenuItem(name: 'Sate Ayam', price: 20000, discountPercent: 5),
    ];

    List<String> allItems = menuItems.map((item) => item.name).toList();
    // ignore: avoid_print
    allItems.forEach(print);

    List<MenuItem> itemsUnder15000 = menuItems.where((item) => item.finalPrice() < 15000).toList();
    // ignore: avoid_function_literals_in_foreach_calls, avoid_print
    itemsUnder15000.forEach((item) => print('${item.name}: ${item.finalPrice()}'));

    double totalPrice = menuItems.fold(0, (sum, item) => sum + item.finalPrice());
    // ignore: avoid_print
    print('Total Price: $totalPrice');
  }

