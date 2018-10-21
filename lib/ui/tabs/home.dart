import 'package:flutter/material.dart';
import 'package:remo/Theme.dart' as Theme;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Container(
          child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Icon(Icons.home, size: 150.0, color: Colors.black12),
          new Text('Home tab content'),
          new MaterialButton(
              color: Theme.Colors.appBarGradientEnd,
              highlightColor: Colors.transparent,
              splashColor: Theme.Colors.loginGradientEnd,
              //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 42.0),
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      color: Theme.Colors.appBarGradientStart,
                      fontSize: 25.0,
                      fontFamily: "WorkSansBold"),
                ),
              ),
              onPressed: () => print('ssss'))
        ],
      ));
}
