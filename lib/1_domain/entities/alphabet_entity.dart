
import 'package:equatable/equatable.dart';

class AlphabetEntity extends Equatable {
  final String character;
  final String name;
  final int characterNumber;
  final String soundPath;

  const AlphabetEntity(
      {required this.character,
      required this.name,
      required this.characterNumber,
      required this.soundPath});

  @override
  List<Object?> get props => [character, name, characterNumber, soundPath];
}
