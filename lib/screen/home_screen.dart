import 'package:flutter/material.dart';
import 'package:zupay_assigment/model/product_model.dart';
import 'package:zupay_assigment/widget/custom_navbar.dart';
import 'package:zupay_assigment/widget/section_titles.dart';

import '../widget/product_card.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/';
  const HomeScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // hitApi() async {
  //   ApiDataModel apiDataModel =
  //       await Provider.of<ProviderClass>(context).hitApi();
  //   Provider.of<ProviderClass>(context).setData(apiDataModel);
  // }

  @override
  Widget build(BuildContext context) {
    // hitApi();
    return Scaffold(
      drawer: const ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
        child: Drawer(),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              )),
        ],
      ),
      bottomNavigationBar: const CustomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SectionTitles(title: 'New Arrivals'),
            // Product Carosuel
            SizedBox(
              height: 500,
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  itemCount: Product.products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.58),
                  itemBuilder: (context, index) {
                    return Center(
                        child: ProductCard(product: Product.products[index]));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
