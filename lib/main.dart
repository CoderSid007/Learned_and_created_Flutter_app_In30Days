import 'package:flutter/material.dart';
import 'package:pseudocode/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pseudocode/pages/home_page.dart';
import 'package:pseudocode/utilities/routes.dart';


void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return MaterialApp(

          themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
            fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.orangeAccent,

          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme,

        )

      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
         debugShowCheckedModeBanner: false,
         initialRoute: MyRoutes.homeRoute,
         routes: {
        "/" : (content)=> LoginPage(),
           MyRoutes.homeRoute : (content)=> HomePage(),
          MyRoutes.loginRoute :(context) => LoginPage()
         },
    );
  }

}
