import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnpunjabi/2_application/pages/alphabet_table/cubit/alphabet_cubit.dart';

class AlphabetPopup extends StatelessWidget {
  final int index;
  final String character;
  const AlphabetPopup(
      {super.key, required this.character, required this.index});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AlphabetCubit>(context).getAlphabetByIndex(index);
    final themeData = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    final player = AudioPlayer();
    return Center(
      child: Container(
        height: mediaQuery.size.height * 2 / 3,
        width: mediaQuery.size.width * 4 / 5,
        decoration: BoxDecoration(
          color: themeData.colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(15),
        ),
        child: GestureDetector(
          onTap: () async {
            player.play(AssetSource('audio/alphabetSounds/5haha.mp3'));
          },
          child: Center(
            child: Column(
              children: [
                Hero(
                  tag: character,
                  child: Text(
                    // state.alphabet,
                    character,
                    style: TextStyle(
                      color: themeData.colorScheme.onPrimaryContainer,
                      fontSize: 124,
                    ),
                  ),
                ),
                Container(
                  width: mediaQuery.size.width * 4 / 5,
                  height: mediaQuery.size.height * 2 / 5,
                  child: index == 9 ||
                          index == 14 ||
                          index == 19 ||
                          index == 34 ||
                          index == 40
                      ? Center(
                          child: Text(
                            "No words begin with $character",
                            style: TextStyle(
                                color: themeData.colorScheme.onPrimaryContainer,
                                fontSize: 28),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/alphabetImages/${index + 1}.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
