import 'package:flutter/material.dart';

import '../model/product_model.dart';

class CartProductCard extends StatelessWidget {
  final Product product;
  final int quantity;
  const CartProductCard({
    Key? key,
    required this.product,
    this.quantity = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(product.imageUrl,
                  width: 100, height: 120, fit: BoxFit.cover),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        product.subText,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      const SizedBox(width: 20),
                      Text(
                        '\$${product.price}',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Text('Size: S',
                          style: Theme.of(context).textTheme.labelLarge),
                      const SizedBox(width: 10),
                      Text('Color',
                          style: Theme.of(context).textTheme.labelLarge),
                      const SizedBox(width: 10),
                      Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(7))),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove_circle_outline)),
                      Text('$quantity',
                          style: Theme.of(context).textTheme.headline6),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add_circle_outline)),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 40),
          const Divider(thickness: 2)
        ],
      ),
    );
  }
}
