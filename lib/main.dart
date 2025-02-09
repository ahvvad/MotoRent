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
        textTheme: GoogleFonts.kanitTextTheme(),
      ),
      title: 'MotoRent',
      home: const OnboardingPage(),
    );
  }
}


// ToDo: change the UI of the app
// ToDo: change the font to => GoogleFonts.barlowTextTheme(),
// ToDo: change the images to Awesome icons [ location-arrow / gas-pump / battery-three-quarters / arrow-back of the maps pages ]
// ToDo: refactor the code
// ToDo: animate the  maps
// ToDo: add a Clean-Arc & BLoC pattern and Firebase database implementation