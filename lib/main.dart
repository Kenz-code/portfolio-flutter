import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio2/utils/constants/app_colors.dart';
import 'package:portfolio2/views/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior()
          .copyWith(scrollbars: false),
      title: 'Portfolio',
      theme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: kcPrimary,
          primary: kcPrimary,
          onPrimary: kcOnBackground,
          surface: kcBackground,
          onSurface: kcOnBackground,
          onSurfaceVariant: kcOnBackgroundSubtle,
          surfaceContainer: kcBackgroundCard,
          surfaceContainerLowest: kcBackgroundCard,
          surfaceContainerLow: kcBackgroundCard,
          surfaceContainerHigh: kcBackgroundCard,
          surfaceContainerHighest: kcBackgroundCard,
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.interTextTheme().apply(
          displayColor: kcOnBackground,
          bodyColor: kcOnBackgroundSubtle
        ),
      ),
      home: const HomeView(),
    );
  }
}