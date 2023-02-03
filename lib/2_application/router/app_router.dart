import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnpunjabi/2_application/core/cubit/app_cubit.dart';
import 'package:learnpunjabi/2_application/pages/alphabet_table/alphabet_table_page.dart';
import 'package:learnpunjabi/2_application/pages/home/home_page.dart';
import 'package:learnpunjabi/2_application/pages/root/root_page.dart';
import 'package:learnpunjabi/2_application/pages/testaudio/testaudio_page.dart';

class AppRouter {
  final AppCubit _appCubit = AppCubit();

  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _appCubit,
            child: const RootPage(),
          ),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _appCubit,
            child: const HomePage(),
          ),
        );
      case '/alphabetTable':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _appCubit,
            child: const AlphabetTablePageWrapperProvider(),
          ),
        );
      // case '/alphabet':
      // return MaterialPageRoute(
      //   builder: (_) => BlocProvider.value(
      //     value: _appCubit,
      //     child: const AlphabetPage(),
      //   ),
      // );
      case '/testAudio':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _appCubit,
            child: const SongPage(),
          ),
        );
      default:
        print(
            'Router could not match the page, so you are redirected to Home page.');
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _appCubit,
            child: const HomePage(),
          ),
        );
    }
  }

  void dispose() {
    _appCubit.close();
  }
}
