import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynewapp/pages/home_page.dart';
import 'package:mynewapp/pages/login_page.dart';
import 'package:mynewapp/utils/routes.dart';

void main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.orange,
      appBarTheme: AppBarTheme(color: Colors.white,
      elevation: 0.0,

      ),
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),


        initialRoute: MyRoutes.homeRoute,
        routes: {
        "/": (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
    },
    );

  }
}
