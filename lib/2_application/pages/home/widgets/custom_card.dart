import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const CustomCard({this.onTap, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: mediaQuery.size.width / 1.1,
        height: mediaQuery.size.width / 1.1 * 3 / 7,
        constraints: const BoxConstraints(
          maxWidth: 700,
          maxHeight: 300,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: themeData.colorScheme.primaryContainer,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(
                  Icons.circle,
                ),
                // width: 150,
                // child: Image.asset(
                //   'assets/images/gurbani.jfif',
                //   fit: BoxFit.fill,
                //   alignment: Alignment.center,
                // ),
              ),
            ),
            Flexible(
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                      color: themeData.colorScheme.onPrimaryContainer,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
