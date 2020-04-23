import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'fancy_action.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                CircleAvatar(
                  backgroundColor: Colors.white,
                )
              ],
            ),
            ListTile(
              title: Text("Page One"),
              trailing: Icon(Icons.arrow_upward),
            ),
            Divider(
              color: Colors.blueGrey,
            ),
            ListTile(
              title: Text("Sign In"),
              trailing: Icon(Icons.arrow_upward),
              onTap: () => Navigator.of(context).pushNamed('/signin'),
            ),
            Divider(
              color: Colors.blueGrey,
            ),
            ListTile(
              title: Text("Sign Up"),
              onTap: () => Navigator.of(context).pushNamed('/signup'),
              trailing: Icon(Icons.arrow_downward),
            ),
            Divider(
              color: Colors.blueGrey,
            ),
            ListTile(
                title: Text("Close"),
                trailing: Icon(Icons.close),
                onTap: () => Navigator.of(context).pop()),
            Divider(
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
      floatingActionButton: FancyAction(
        onPressed: null,
      ),
      body: Container(
        child: Center(
          child: Text("HomePage"),
        ),
      ),
    );
  }
}