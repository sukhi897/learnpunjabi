import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  // *****************
  // static colors
  // *****************
  // static const Color _lightPrimary = Color(0xFF8B5000);
  // static const Color _lightOnPrimary = Color(0xFFFFFFFF);
  // static const Color _lightPrimaryContainer = Color(0xFFFFFBFF);
  // static const Color _lightOnPrimaryContainer = Color(0xFF2D1600);
  // static const Color _lightSecondary = Color(0xFF735A42);
  // static const Color _lightOnSecondary = Color(0xFFFFFFFF);
  // static const Color _lightSecondaryContainer = Color(0xFFFFDCBE);
  // static const Color _lightOnSecondaryContainer = Color(0xFF291806);
  // static const Color _lightTertiary = Color(0xFF586339);
  // static const Color _lightOnTertiary = Color(0xFFFFFFFF);
  // static const Color _lightTertiaryContainer = Color(0xFFDCE8B4);
  // static const Color _lightOnTertiaryContainer = Color(0xFF161E00);
  // static const Color _lightError = Color(0xFFBA1A1A);
  // static const Color _lightOnError = Color(0xFFFFFFFF);
  // static const Color _lightErrorContainer = Color(0xFFFFDAD6);
  // static const Color _lightOnErrorContainer = Color(0xFF410002);
  // static const Color _lightBackground = Color(0xFFFFFBFF);
  // static const Color _lightOnBackground = Color(0xFF201B16);
  // static const Color _lightSurface = Color(0xFFFFFBFF);
  // static const Color _lightOnSurface = Color(0xFF201B16);
  // static const Color _lightSurfaceVariant = Color(0xFFF2DFD1);
  // static const Color _lightOnSurfaceVariant = Color(0xFF51453A);
  // static const Color _lightOutline = Color(0xFF837468);
  // static const Color _lightShadow = Color(0xFF000000);
  // static const Color _lightInverseSurface = Color(0xFF352F2B);
  // static const Color _lightOnInverseSurface = Color(0xFFFAEFE7);
  // static const Color _lightInversePrimary = Color(0xFFFFB871);

  // static const Color _darkPrimary = Color(0xFFffb871);
  // static const Color _darkOnPrimary = Color(0xFF4A2800);
  // static const Color _darkPrimaryContainer = Color(0xFF6A3C00);
  // static const Color _darkOnPrimaryContainer = Color(0xFFFFDCBE);
  // static const Color _darkSecondary = Color(0xFFE1C1A4);
  // static const Color _darkOnSecondary = Color(0xFF402C18);
  // static const Color _darkSecondaryContainer = Color(0xFF59422D);
  // static const Color _darkOnSecondaryContainer = Color(0xFFFFDCBE);
  // static const Color _darkTertiary = Color(0xFFC0CC9A);
  // static const Color _darkOnTertiary = Color(0xFF2B3410);
  // static const Color _darkTertiaryContainer = Color(0xFF414B24);
  // static const Color _darkOnTertiaryContainer = Color(0xFFDCE8B4);
  // static const Color _darkError = Color(0xFFFFB4AB);
  // static const Color _darkOnError = Color(0xFF690005);
  // static const Color _darkErrorContainer = Color(0xFF93000A);
  // static const Color _darkOnErrorContainer = Color(0xFFFFB4AB);
  // static const Color _darkBackground = Color(0xFF201B16);
  // static const Color _darkOnBackground = Color(0xFFEBE0D9);
  // static const Color _darkSurface = Color(0xFF201B16);
  // static const Color _darkOnSurface = Color(0xFFEBE0D9);
  // static const Color _darkSurfaceVariant = Color(0xFF51453A);
  // static const Color _darkOnSurfaceVariant = Color(0xFFD5C3B5);
  // static const Color _darkOutline = Color(0xFF9E8E81);
  // static const Color _darkShadow = Color(0xFF000000);
  // static const Color _darkInverseSurface = Color(0xFFEBE0D9);
  // static const Color _darkOnInverseSurface = Color(0xFF352F2B);
  // static const Color _darkInversePrimary = Color(0xFF8B5000);

  // *****************
  // Color Schemes
  // *****************
  static const orangeLightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF8B5000),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFFFDCBE),
    onPrimaryContainer: Color(0xFF2D1600),
    secondary: Color(0xFF735A42),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFFFDCBD),
    onSecondaryContainer: Color(0xFF2C1600),
    tertiary: Color(0xFF586339),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFDCE8B4),
    onTertiaryContainer: Color(0xFF161E00),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFFFFBFF),
    onBackground: Color(0xFF201B16),
    surface: Color(0xFFFFFBFF),
    onSurface: Color(0xFF201B16),
    surfaceVariant: Color(0xFFF2DFD1),
    onSurfaceVariant: Color(0xFF51453A),
    outline: Color(0xFF837468),
    onInverseSurface: Color(0xFFFAEFE7),
    inverseSurface: Color(0xFF352F2B),
    inversePrimary: Color(0xFFFFB871),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF8B5000),
    // outlineVariant: Color(0xFFD5C3B5),
    // scrim: Color(0xFF000000),
  );

  static const orangeDarkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFFFB871),
    onPrimary: Color(0xFF4A2800),
    primaryContainer: Color(0xFF6A3C00),
    onPrimaryContainer: Color(0xFFFFDCBE),
    secondary: Color(0xFFE1C1A4),
    onSecondary: Color(0xFF402C18),
    secondaryContainer: Color(0xFF59422D),
    onSecondaryContainer: Color(0xFFFBD9BB),
    tertiary: Color(0xFFC0CC9A),
    onTertiary: Color(0xFF2B3410),
    tertiaryContainer: Color(0xFF414B24),
    onTertiaryContainer: Color(0xFFDCE8B4),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFB4AB),
    background: Color(0xFF201B16),
    onBackground: Color(0xFFEBE0D9),
    surface: Color(0xFF201B16),
    onSurface: Color(0xFFEBE0D9),
    surfaceVariant: Color(0xFF51453A),
    onSurfaceVariant: Color(0xFFD5C3B5),
    outline: Color(0xFF9E8E81),
    onInverseSurface: Color(0xFF352F2B),
    inverseSurface: Color(0xFFEBE0D9),
    inversePrimary: Color(0xFF8B5000),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFFFFB871),
    // outlineVariant: Color(0xFF51453A),
    // scrim: Color(0xFF000000),
  );

  // *****************
  // Theme light/dark
  // *****************

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: orangeLightColorScheme,
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: orangeDarkColorScheme,
  );
}
