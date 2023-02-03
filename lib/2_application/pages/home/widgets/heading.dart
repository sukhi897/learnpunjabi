import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String text;
  const Heading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Text(
      text,
      style: themeData.textTheme.headline1!.copyWith(fontSize: 40.0),
      textAlign: TextAlign.center,
    );
  }
}
