import 'package:flutter/material.dart';
import 'package:juntos/pages/home.dart';
import 'package:juntos/pages/home_dark.dart';
import 'package:juntos/pages/button_styles.dart';
import 'package:juntos/pages/login.dart';

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
      theme: ThemeData(
        extensions: [
          AppButtonStyles(
            primary: IconButton.styleFrom(
              backgroundColor: const Color(0xFFFFCA62),
              foregroundColor: Colors.black,
              minimumSize: const Size(40, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            secondary: IconButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              minimumSize: const Size(40, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            ghost: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.black,
            ),
          ),
        ],
        fontFamily: "AvenirLT",
      ),
      // home: Playground(),
      home: LoginPage(),
    );
  }
}
