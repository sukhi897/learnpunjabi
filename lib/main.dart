
import 'package:learnpunjabi/2_application/router/app_router.dart';
import 'package:learnpunjabi/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '2_application/core/services/theme_service.dart';
import 'injection.dart' as dependency_injection; // dependency injection

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dependency_injection.init();
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
        // debugShowCheckedModeBanner: false,
        // themeMode: ThemeMode.system,
        themeMode: themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        onGenerateRoute: _appRouter.onGenerateRoute,
      );
    });
  }
}

