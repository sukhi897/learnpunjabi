part of 'alphabet_cubit.dart';

abstract class AlphabetState extends Equatable {
  const AlphabetState();

  @override
  List<Object> get props => [];
}

//#####################
//Single Alphabet State
//#####################
class AlphabetInitial extends AlphabetState {}

class AlphabetStateLoading extends AlphabetState {
  const AlphabetStateLoading();
}

class AlphabetStateLoaded extends AlphabetState {
  final String alphabet;
  const AlphabetStateLoaded({required this.alphabet});
  @override
  List<Object> get props => [alphabet];
}

class AlphabetStateError extends AlphabetState {
  final String message;
  const AlphabetStateError({required this.message});
  @override
  List<Object> get props => [message];
}

//#####################
//Alphabet List State
//#####################

class AlphabetListStateLoading extends AlphabetState {
  const AlphabetListStateLoading();
}

class AlphabetListStateLoaded extends AlphabetState {
  final List<String> alphabetList;
  const AlphabetListStateLoaded({required this.alphabetList});
  @override
  List<Object> get props => [alphabetList];
}

class AlphabetListStateError extends AlphabetState {
  final String message;
  const AlphabetListStateError({required this.message});
  @override
  List<Object> get props => [message];
}
