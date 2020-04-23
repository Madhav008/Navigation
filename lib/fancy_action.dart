import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class FancyAction extends StatelessWidget {

  FancyAction({@required this.onPressed});

final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.amber,
      splashColor: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Icon(Icons.star,),
            Text("Add Item",
            style: TextStyle(color: Colors.white),),
          ],
        ),
      ),
      shape: const StadiumBorder(),
      onPressed: onPressed,
    );
  }
}