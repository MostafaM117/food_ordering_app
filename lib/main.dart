import 'package:flutter/material.dart';
import 'package:food_ordering_app/homepage.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme:  GoogleFonts.ubuntuTextTheme(Theme.of(context).textTheme),
        primaryColor: Colors.grey,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      routes: <String, WidgetBuilder>{
        MyHomePage.homepageRoute: (context) => const MyHomePage(),
      },
    );
  }
}
