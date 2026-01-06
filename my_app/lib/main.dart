import 'package:flutter/material.dart';
import 'package:my_app/Utils/routes.dart';
import 'package:my_app/pages/homepage.dart';
import 'package:my_app/pages/login.dart';
import  'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   

    return MaterialApp(
      initialRoute: MyRoutes.LoginRoute,

    
      
      themeMode: ThemeMode.light,
      theme: ThemeData(
  primarySwatch: Colors.amber,
  textTheme: GoogleFonts.latoTextTheme(),
),
      darkTheme: ThemeData(brightness: Brightness.light) ,

      routes:{
        
        MyRoutes.LoginRoute : (context) => Login(),
        MyRoutes.HomeRoute : (context) => Homepage(),




      }

    );

  }

  

  }

