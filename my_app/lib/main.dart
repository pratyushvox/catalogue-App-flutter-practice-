import 'package:flutter/material.dart';
import 'package:my_app/widgets/themes.dart';
import 'package:my_app/pages/homepage.dart';
import 'package:my_app/pages/login.dart'; 
import 'package:my_app/utils/routes.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      themeMode: ThemeMode.light,

     
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => Login(),
      },
    );
  }
}
