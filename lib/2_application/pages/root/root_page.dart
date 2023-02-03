import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  RootPageState createState() => RootPageState();
}

class RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is temporay page to test navigation and routing features of the app and will not be in the final version of the App!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: themeData.colorScheme.tertiaryContainer,
              ),
              child: Center(
                child: Text(
                  'ੴ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 110,
                    color: themeData.colorScheme.onTertiaryContainer,
                  ),
                ),
                // child: Image.asset('assets/images/ikOnkarSymbol.png')),
              ),
            ),
            const SizedBox(height: 48),
            ElevatedButton(
              child: const Text(
                'Home Page',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/home');
              },
            ),
            ElevatedButton(
              child: const Text(
                'Alphabet Page',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/alphabetTable');
              },
            ),
            ElevatedButton(
              child: const Text(
                'Test Audio Page',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/testAudio');
              },
            ),
          ],
        ),
      ),
    );
  }
}
