import 'package:learnpunjabi/1_domain/entities/alphabet_entity.dart';
import 'package:learnpunjabi/1_domain/failures/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:learnpunjabi/1_domain/repositories/alphabet_repo.dart';


class AlphabetUseCases {
  AlphabetUseCases({required this.alphabetRepo});
  final AlphabetRepo alphabetRepo;

  Either<Failure, AlphabetEntity> getAlphabet(int number) {
    return alphabetRepo.getAlphabetFromDatasource(number);
    // space for business logic
  }

  Either<Failure, List<String>> getAlphabetList() {
    return alphabetRepo.getAlphabetListFromDatasource();
    // space for business logic
  }
}
