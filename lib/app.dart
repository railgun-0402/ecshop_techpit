import 'package:ecshop_techpit/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.black,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
          ),
          textTheme: GoogleFonts.montserratTextTheme(
          ),
        ),
        /// dark
        darkTheme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(),
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        home: const HomePage(),
    );
  }
}
