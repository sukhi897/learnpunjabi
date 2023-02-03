import 'package:learnpunjabi/1_domain/entities/alphabet_entity.dart';
import 'package:equatable/equatable.dart';

class AlphabetModel extends AlphabetEntity with EquatableMixin {
  AlphabetModel(
      {required String character,
      required int characterNumber,
      required String name,
      required String soundPath})
      : super(
            character: character,
            characterNumber: characterNumber,
            name: name,
            soundPath: soundPath);

  factory AlphabetModel.fromMap(Map<dynamic, dynamic> alphbt) {
    return AlphabetModel(
        characterNumber: alphbt['number'],
        character: alphbt['character'],
        name: alphbt['name'],
        soundPath: alphbt['soundPath']);
  }
}
