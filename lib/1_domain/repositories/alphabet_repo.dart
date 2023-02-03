import 'package:dartz/dartz.dart';
import 'package:learnpunjabi/1_domain/entities/alphabet_entity.dart';
import 'package:learnpunjabi/1_domain/failures/failures.dart';

abstract class AlphabetRepo {
  Either<Failure, AlphabetEntity> getAlphabetFromDatasource(int number);
  Either<Failure, List<String>> getAlphabetListFromDatasource();
}
