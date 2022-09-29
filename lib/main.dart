import 'package:flutter_widgets_part1/views/pages.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(
        //   textTheme: Theme.of(context).textTheme.apply(
        //         fontFamily: GoogleFonts.poppins().fontFamily,
        //       ),
        // ),
        home: HomePageWidget());
  }
}
