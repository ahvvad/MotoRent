import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motorent/presentation/pages/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.light(
          primary: Colors.blue,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
        ),
        textTheme: GoogleFonts.barlowTextTheme(),
      ),
      title: 'MotoRent',
      home: const OnboardingPage(),
    );
  }
}
