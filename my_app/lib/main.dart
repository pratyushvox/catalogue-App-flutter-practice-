import 'package:flutter/material.dart';
import 'package:my_app/widgets/themes.dart';
import 'package:my_app/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      themeMode: ThemeMode.light, 

      debugShowCheckedModeBanner: false,
      home:  Homepage(),
    );
  }
}
