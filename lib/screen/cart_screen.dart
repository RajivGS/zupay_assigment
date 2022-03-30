import 'package:flutter/material.dart';
import 'package:zupay_assigment/model/product_model.dart';

import '../widget/cart_product_card.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';
  const CartScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const CartScreen(),
        settings: const RouteSettings(name: '/cart'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.black),
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: const Icon(Icons.keyboard_arrow_left)),
          backgroundColor: Colors.white,
          title: Center(
              child: Text('Your Cart',
                  style: Theme.of(context).textTheme.headline6))),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CartProductCard(product: Product.products[0]),
            CartProductCard(product: Product.products[1]),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total", style: Theme.of(context).textTheme.headline6),
                    Text("\$ 129",
                        style: Theme.of(context).textTheme.headline5),
                  ],
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {},
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: Center(
                      child: Text(
                        "Payment",
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
