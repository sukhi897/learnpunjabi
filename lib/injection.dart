import 'package:learnpunjabi/0_data/datasources/alphabet_local_datasource.dart';
import 'package:learnpunjabi/0_data/repositories/alphabet_repo_impl.dart';
import 'package:learnpunjabi/1_domain/repositories/alphabet_repo.dart';
import 'package:learnpunjabi/1_domain/usecases/alphabet_usecases.dart';
import 'package:learnpunjabi/2_application/pages/alphabet_table/cubit/alphabet_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance; // sl == Service Locator

Future<void> init() async {
// ! application Layer
  // Factory = every time a new/fresh instance of that class
  sl.registerFactory(() => AlphabetCubit(alphabetUseCases: sl()));

// ! domain Layer
  sl.registerFactory(() => AlphabetUseCases(alphabetRepo: sl()));

// ! data Layer
  
  sl.registerFactory<AlphabetRepo>(
      () => AlphabetRepoImpl(alphabetLocalDatasource: sl()));
  sl.registerFactory<AlphabetLocalDatasource>(
      () => AlphabetLocalDatasourceImpl());

// ! externs
  sl.registerFactory(() => http.Client());
}
