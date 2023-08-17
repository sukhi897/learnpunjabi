import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnpunjabi/1_domain/entities/alphabet_entity.dart';
import 'package:learnpunjabi/1_domain/failures/failures.dart';
import 'package:learnpunjabi/1_domain/usecases/alphabet_usecases.dart';

part 'alphabet_state.dart';

const generalFailureMessage = 'General Failure ?!';
const serverFailureMessage = 'Server Failure ?!';
const cacheFailureMessage = 'Cache Failure ?!';

class AlphabetCubit extends Cubit<AlphabetState> {
  AlphabetUseCases alphabetUseCases;
  AlphabetCubit({required this.alphabetUseCases}) : super(AlphabetInitial());

  void getAlphabetByIndex(int index) {
    emit(const AlphabetStateLoading());
    final failureOrAlphabet = alphabetUseCases.getAlphabet(index);
    failureOrAlphabet.fold(
        (l) => emit(AlphabetStateError(message: _mapFailureToMessage(l))),
        (r) => emit(AlphabetStateLoaded(alphabet: r)));
  }

  void getListOfAlphabets() {
    emit(const AlphabetListStateLoading());
    final failureOrList = alphabetUseCases.getAlphabetList();
    failureOrList.fold(
        (l) => emit(AlphabetListStateError(message: _mapFailureToMessage(l))),
        (r) => emit(AlphabetListStateLoaded(alphabetList: r)));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return serverFailureMessage;
      case CacheFailure:
        return cacheFailureMessage;
      default:
        return generalFailureMessage;
    }
  }
}
