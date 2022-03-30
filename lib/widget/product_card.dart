import 'package:flutter/material.dart';

import '../model/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.2,
                height: 200,
                child: Image.asset(
                  product.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                height: 100,
                width: MediaQuery.of(context).size.width / 1.4 - 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product.name),
                    Text(product.subText),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$${product.price}'),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.shopping_bag_outlined))
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
