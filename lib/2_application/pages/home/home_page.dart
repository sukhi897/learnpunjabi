import 'package:flutter/material.dart';
import 'package:learnpunjabi/2_application/core/services/theme_service.dart';
import 'package:learnpunjabi/2_application/pages/home/widgets/custom_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonsData = [
      'Alphabet',
      'Vocabulary',
      'Vowels',
      'Games',
      'Chapters',
      'Gurbani'
    ];
    // final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Learn Gurmukhi'.toUpperCase(),
          // style: themeData.textTheme.headline1,
        ),
        centerTitle: true,
        actions: [
          Switch(
              value: Provider.of<ThemeService>(context).isDarkModeOn,
              onChanged: (_) {
                Provider.of<ThemeService>(context, listen: false).toggleTheme();
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: ListView.builder(
          itemCount: buttonsData.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: CustomCard(
                text: buttonsData[index],
                onTap: () {
                  print('${buttonsData[index]} button was tapped.');
                  // TODO: Fix this.
                  Navigator.of(context).pushNamed('/alphabetTable');
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
