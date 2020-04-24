import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigation_drawer/pages/Sign_in.dart';
import 'package:navigation_drawer/pages/Sign_up.dart';

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
        '/': (context) => SignIn(),
        '/signup': (context) => SignUpPage(),
      },
    );
  }
}
