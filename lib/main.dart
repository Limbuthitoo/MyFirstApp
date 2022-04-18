import 'package:myapp_1/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:myapp_1/pages/loginPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp_1/utilities/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.purple
        ),
      initialRoute:"/",
      routes: {
        "/":(context) => LoginPage(),
        MyRoutes.homeRoute:(context) => HomePage(),
        MyRoutes.loginRoute:(context) => LoginPage(),
      },
    );
  }
}
