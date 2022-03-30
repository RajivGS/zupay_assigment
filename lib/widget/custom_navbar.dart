import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 120,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.indigo.shade100.withOpacity(0.3),
                borderRadius: BorderRadius.circular(30)),
            padding: const EdgeInsets.fromLTRB(30, 15, 20, 15),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.home),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
                const Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
          ),
        ]),
      ),
    );
  }
}
