import 'package:learnpunjabi/0_data/datasources/alphabet_local_datasource.dart';
import 'package:learnpunjabi/1_domain/entities/alphabet_entity.dart';
import 'package:learnpunjabi/1_domain/failures/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:learnpunjabi/1_domain/repositories/alphabet_repo.dart';

class AlphabetRepoImpl implements AlphabetRepo {
  AlphabetRepoImpl({required this.alphabetLocalDatasource});
  final AlphabetLocalDatasource alphabetLocalDatasource;

  @override
  Either<Failure, AlphabetEntity> getAlphabetFromDatasource(int number) {
    try {
      final result = alphabetLocalDatasource.getAlphabetByNumber(number);
      return right(result);
    } catch (e) {
      return left(GeneralFailure());
    }
  }

  @override
  Either<Failure, List<String>> getAlphabetListFromDatasource() {
    try {
      List<String> list = [];
      for (int i = 0; i < 41; i++) {
        list.add(alphabetLocalDatasource.getAlphabetByNumber(i + 1).character);
      }
      return right(list);
    } catch (e) {
      return left(GeneralFailure());
    }
  }
}
