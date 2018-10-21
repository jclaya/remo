import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:remo/Theme.dart' as Theme;

class AppointmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Scaffold(
        body: new Container(
            child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Image(
                width: 150.0,
                height: 150.0,
                fit: BoxFit.fill,
                image: new AssetImage('assets/img/sad.png')),
            new Text('You have no appointments yet'),
            new MaterialButton(
                color: Theme.Colors.appBarGradientEnd,
                highlightColor: Colors.transparent,
                splashColor: Theme.Colors.loginGradientEnd,
                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 42.0),
                  child: Text(
                    "APPOINT ME",
                    style: TextStyle(
                        color: Theme.Colors.appBarGradientStart,
                        fontSize: 25.0,
                        fontFamily: "WorkSansBold"),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppointmentPage()),
                  );
                })
          ],
        )),
      );
}
