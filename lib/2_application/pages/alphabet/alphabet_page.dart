import 'package:flutter/material.dart';

class AlphabetPage extends StatelessWidget {
  final int index;
  final String character;
  const AlphabetPage({super.key, required this.character, required this.index});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    return Center(
      child: Container(
        height: mediaQuery.size.height * 2 / 3,
        width: mediaQuery.size.width * 4 / 5,
        decoration: BoxDecoration(
          color: themeData.colorScheme.primary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Column(
            children: [
              Text(
                // state.alphabet,
                character,
                style: TextStyle(
                  color: themeData.colorScheme.onPrimary,
                  fontSize: 124,
                ),
              ),
              Image.asset(
                'assets/images/alphabetImages/1.jpg',
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
      ),
    );
  }
}
