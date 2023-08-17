import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnpunjabi/2_application/pages/alphabet_table/cubit/alphabet_cubit.dart';
import 'package:learnpunjabi/2_application/pages/alphabet_table/widgets/error_message.dart';

class AlphabetPopup extends StatelessWidget {
  final int index;
  const AlphabetPopup({super.key, required this.index});

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
        child: BlocBuilder<AlphabetCubit, AlphabetState>(
          builder: (c, state) {
            if (state is AlphabetInitial) {
              return const SizedBox(
                height: 42,
              );
            } else if (state is AlphabetStateLoading) {
              return CircularProgressIndicator(
                color: themeData.colorScheme.secondary,
              );
            } else if (state is AlphabetStateLoaded) {
              final alphabet = state.alphabet;
              return GestureDetector(
                onTap: () async {
                  player.play(AssetSource(alphabet.soundPath));
                },
                child: Center(
                  child: Column(
                    children: [
                      Hero(
                        tag: alphabet.character,
                        child: Text(
                          alphabet.character,
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
                                  "No words begin with ${alphabet.character}",
                                  style: TextStyle(
                                      color: themeData
                                          .colorScheme.onPrimaryContainer,
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
              );
            } else if (state is AlphabetListStateError) {
              return ErrorMessage(message: state.message);
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
