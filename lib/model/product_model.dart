import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String imageUrl;
  final String subText;
  final double price;

  const Product({
    required this.name,
    required this.imageUrl,
    required this.subText,
    required this.price,
  });

  static List<Product> products = [
    const Product(
      name: 'Nicole Miller',
      subText: 'Me Bandage Black Dress',
      imageUrl: 'assets/f.png',
      price: 110.00,
    ),
    const Product(
      name: 'WAYF',
      subText: 'Me Bandage  Dress',
      imageUrl: 'assets/a.png',
      price: 69.00,
    ),
    const Product(
      name: 'Nicole Miller',
      subText: 'Me Bandage Black Dress',
      imageUrl: 'assets/d.png',
      price: 110.00,
    ),
    const Product(
      name: 'Tiffany Rose',
      subText: 'Me Bandage Black Dress',
      imageUrl: 'assets/a.png',
      price: 2.99,
    ),
    const Product(
      name: 'Nicole Miller',
      subText: 'Me Bandage Black Dress',
      imageUrl: 'assets/b.png',
      price: 110.00,
    ),
    const Product(
      name: 'Tiffany Rose',
      subText: 'Me Bandage Black Dress',
      imageUrl: 'assets/e.png',
      price: 2.99,
    ),
  ];
  @override
  List<Object?> get props => [products];
}
