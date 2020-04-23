import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lime,
      primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors.grey[50]: null),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Madhav Jindal"),
              accountEmail: Text("madhavjindal21@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text('MJ'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(backgroundColor: Colors.white,)
              ],
            ),
            ListTile(
              title: Text("Page One"),
              trailing: Icon(Icons.arrow_upward),
            ),
            ListTile(
              title: Text("Page Two"),
              trailing: Icon(Icons.arrow_upward),
            ),
            ListTile(
              title: Text("Page Two"),
              trailing: Icon(Icons.arrow_downward),
            ),
            Divider(color: Colors.blueGrey,),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: ()=> Navigator.of(context).pop()
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text("HomePage"),
        ),
      ),
    );
  }
}
