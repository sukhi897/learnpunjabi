
import 'package:learnpunjabi/0_data/exceptions/exceptions.dart';
import 'package:learnpunjabi/0_data/models/alphabet_model.dart';

abstract class AlphabetLocalDatasource {
  /// requests an alphabet from the datasorce.
  /// returns [AlphabetModel] if successfull
  /// throws a IndexOutOfBoundException if status code is not 200
  AlphabetModel getAlphabetByNumber(int number);
}

class AlphabetLocalDatasourceImpl implements AlphabetLocalDatasource {
  final List<Map> alphabetData = [
    {
      'number': 1,
      'character': 'ੳ',
      'name': 'oora',
      'soundPath': 'audio/alphabetSounds/1oora.mp3'
    },
    {
      'number': 2,
      'character': 'ਅ',
      'name': 'aira',
      'soundPath': 'audio/alphabetSounds/2aira.mp3'
    },
    {
      'number': 3,
      'character': 'ੲ',
      'name': 'eree',
      'soundPath': 'audio/alphabetSounds/3eree.mp3'
    },
    {
      'number': 4,
      'character': 'ਸ',
      'name': 'sassa',
      'soundPath': 'audio/alphabetSounds/4sassa.mp3'
    },
    {
      'number': 5,
      'character': 'ਹ',
      'name': 'haha',
      'soundPath': 'audio/alphabetSounds/5haha.mp3'
    },
    {
      'number': 6,
      'character': 'ਕ',
      'name': 'kaka',
      'soundPath': 'audio/alphabetSounds/6kaka.mp3'
    },
    {
      'number': 7,
      'character': 'ਖ',
      'name': 'khakha',
      'soundPath': 'audio/alphabetSounds/7khakha.mp3'
    },
    {
      'number': 8,
      'character': 'ਗ',
      'name': 'gaga',
      'soundPath': 'audio/alphabetSounds/8gaga.mp3'
    },
    {
      'number': 9,
      'character': 'ਘ',
      'name': 'ghagha',
      'soundPath': 'audio/alphabetSounds/9ghagha.mp3'
    },
    {
      'number': 10,
      'character': 'ਙ',
      'name': 'ngnga',
      'soundPath': 'audio/alphabetSounds/10ngnga.mp3'
    },
    {
      'number': 11,
      'character': 'ਚ',
      'name': 'chacha',
      'soundPath': 'audio/alphabetSounds/11chacha.mp3'
    },
    {
      'number': 12,
      'character': 'ਛ',
      'name': 'chachhaa',
      'soundPath': 'audio/alphabetSounds/12chachhaa.mp3'
    },
    {
      'number': 13,
      'character': 'ਜ',
      'name': 'jaja',
      'soundPath': 'audio/alphabetSounds/13jaja.mp3'
    },
    {
      'number': 14,
      'character': 'ਝ',
      'name': 'jhajha',
      'soundPath': 'audio/alphabetSounds/14jhajha.mp3'
    },
    {
      'number': 15,
      'character': 'ਞ',
      'name': 'njanja',
      'soundPath': 'audio/alphabetSounds/15njanja.mp3'
    },
    {
      'number': 16,
      'character': 'ਟ',
      'name': 'tainka',
      'soundPath': 'audio/alphabetSounds/16tainka.mp3'
    },
    {
      'number': 17,
      'character': 'ਠ',
      'name': 'thatha',
      'soundPath': 'audio/alphabetSounds/17thatha.mp3'
    },
    {
      'number': 18,
      'character': 'ਡ',
      'name': 'dadda',
      'soundPath': 'audio/alphabetSounds/18dadda.mp3'
    },
    {
      'number': 19,
      'character': 'ਢ',
      'name': 'dhadaa',
      'soundPath': 'audio/alphabetSounds/19dhadaa.mp3'
    },
    {
      'number': 20,
      'character': 'ਣ',
      'name': 'naanaa',
      'soundPath': 'audio/alphabetSounds/20naanaa.mp3'
    },
    {
      'number': 21,
      'character': 'ਤ',
      'name': 'tattaa',
      'soundPath': 'audio/alphabetSounds/21tattaa.mp3'
    },
    {
      'number': 22,
      'character': 'ਥ',
      'name': 'thathaa',
      'soundPath': 'audio/alphabetSounds/22thathaa.mp3'
    },
    {
      'number': 23,
      'character': 'ਦ',
      'name': 'daadaa',
      'soundPath': 'audio/alphabetSounds/23daadaa.mp3'
    },
    {
      'number': 24,
      'character': 'ਧ',
      'name': 'dhaddaa',
      'soundPath': 'audio/alphabetSounds/24dhaddaa.mp3'
    },
    {
      'number': 25,
      'character': 'ਨ',
      'name': 'nannaa',
      'soundPath': 'audio/alphabetSounds/25nannaa.mp3'
    },
    {
      'number': 26,
      'character': 'ਪ',
      'name': 'pappa',
      'soundPath': 'audio/alphabetSounds/26pappa.mp3'
    },
    {
      'number': 27,
      'character': 'ਫ',
      'name': 'phapha',
      'soundPath': 'audio/alphabetSounds/27phapha.mp3'
    },
    {
      'number': 28,
      'character': 'ਬ',
      'name': 'babbaa',
      'soundPath': 'audio/alphabetSounds/28babbaa.mp3'
    },
    {
      'number': 29,
      'character': 'ਭ',
      'name': 'bhabhaa',
      'soundPath': 'audio/alphabetSounds/29bhabhaa.mp3'
    },
    {
      'number': 30,
      'character': 'ਮ',
      'name': 'mamma',
      'soundPath': 'audio/alphabetSounds/30mamma.mp3'
    },
    {
      'number': 31,
      'character': 'ਯ',
      'name': 'yeiya',
      'soundPath': 'audio/alphabetSounds/31yeiya.mp3'
    },
    {
      'number': 32,
      'character': 'ਰ',
      'name': 'raaraa',
      'soundPath': 'audio/alphabetSounds/32raaraa.mp3'
    },
    {
      'number': 33,
      'character': 'ਲ',
      'name': 'lalla',
      'soundPath': 'audio/alphabetSounds/33lalla.mp3'
    },
    {
      'number': 34,
      'character': 'ਵ',
      'name': 'vavaa',
      'soundPath': 'audio/alphabetSounds/34vavaa.mp3'
    },
    {
      'number': 35,
      'character': 'ੜ',
      'name': 'raadaa',
      'soundPath': 'audio/alphabetSounds/35raadaa.mp3'
    },
    {
      'number': 36,
      'character': 'ਸ਼',
      'name': 'shashaa',
      'soundPath': 'audio/alphabetSounds/36shashaa.mp3'
    },
    {
      'number': 37,
      'character': 'ਖ਼',
      'name': 'khakhaa',
      'soundPath': 'audio/alphabetSounds/37khakhaa.mp3'
    },
    {
      'number': 38,
      'character': 'ਗ਼',
      'name': 'gagaa',
      'soundPath': 'audio/alphabetSounds/38gagaa.mp3'
    },
    {
      'number': 39,
      'character': 'ਜ਼',
      'name': 'zazaa',
      'soundPath': 'audio/alphabetSounds/39zazaa.mp3'
    },
    {
      'number': 40,
      'character': 'ਫ਼',
      'name': 'fafaa',
      'soundPath': 'audio/alphabetSounds/40fafaa.mp3'
    },
    {
      'number': 41,
      'character': 'ਲ਼',
      'name': 'lalaa',
      'soundPath': 'audio/alphabetSounds/41lalaa.mp3'
    },
  ];

  AlphabetLocalDatasourceImpl();

  @override
  AlphabetModel getAlphabetByNumber(int number) {
    if (number >= 1 && number <= 41) {
      return AlphabetModel.fromMap(alphabetData[number - 1]);
    } else {
      throw IndexOutOfBoundException();
    }
  }
}
