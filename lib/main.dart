import 'package:flutter/material.dart';
import 'package:remo/ui/root_page.dart';
import 'package:remo/ui/auth.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Remo',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new RootPage(auth: new Auth()),
    );
  }
}
