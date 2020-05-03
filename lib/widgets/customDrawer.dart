import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            onTap: () => Navigator.of(context).pushNamed('/'),
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
              title: Text("Sign Out"),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop()),
          Divider(
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}
