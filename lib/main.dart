import 'package:ahmed_technology/contact_me.dart';
import 'package:ahmed_technology/cv_screen.dart';
import 'package:ahmed_technology/home_screen.dart';
import 'package:ahmed_technology/my_works.dart';
import 'package:ahmed_technology/my_cv.dart';
import 'package:ahmed_technology/my_skills.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ahmed Tech',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(31, 39, 77, 1),
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light
          )  )  ),
      home: HomeScreen(),
      routes: {
        'home_screen': (context) {
          return HomeScreen();
        },
        'my_works': (context) {
          return MyWorks();
        },
        'my_cv': (context) {
          return MYCV();
        },
        'my_skills': (context) {
          return MySkills();
        },
        'contact_me': (context) {
          return ContactMe();
        },

        'cv_screen': (context) {
          return CVScreen();
        },

          },
    );
  } }