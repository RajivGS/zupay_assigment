import 'package:flutter/material.dart';

class SectionTitles extends StatelessWidget {
  final String title;
  const SectionTitles({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 30),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
