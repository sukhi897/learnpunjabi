import 'package:flutter/material.dart';

class Alphabet extends StatelessWidget {
  final String alphabet;
  final Function() onTap;

  const Alphabet({super.key, required this.alphabet, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: themeData.colorScheme.primaryContainer,
        ),
        child: Center(
          child: Text(
            alphabet,
            style: TextStyle(
              fontSize: 48,
              color: themeData.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
      ),
    );
  }
}
