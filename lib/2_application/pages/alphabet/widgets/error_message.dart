import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final String message;
  const ErrorMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: themeData.colorScheme.onErrorContainer,
        ),
        child: Text(
          message,
          style: TextStyle(
            color: themeData.colorScheme.onErrorContainer,
          ),
        ),
      ),
    );
  }
}
