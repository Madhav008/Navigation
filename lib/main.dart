import 'package:flutter/foundation.dart';
import 'package:navigation_drawer/Sign_up.dart';
import 'package:navigation_drawer/welcome.dart';
import 'Sign_in.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.lime,
          primaryColor: defaultTargetPlatform == TargetPlatform.iOS
              ? Colors.grey[50]
              : null),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/signup': (context) => SignupPage(),
        '/signin': (context) => MyHomePage(),
        '/home' : (context) => HomePage()
            },
    );
  }
}

