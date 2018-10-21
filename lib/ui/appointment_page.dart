import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:remo/Theme.dart' as Theme;

class AppointmentPage extends StatefulWidget {
  

  _AppointmentPageState createState() => new _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
    final _formKey = GlobalKey<FormState>();
  
  List<String> _genders = <String>['Male', 'Female'];
  String _gender = 'Male';
  @override
  Widget build(BuildContext context) => new Scaffold(
    body: Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            
          ),
            DropdownButtonHideUnderline(
            child: new DropdownButton<String>(
               value: _gender,
                isDense: true,
                onChanged: (String newValue) {
                          setState(() {
                            _gender = newValue;
                          });
                },
                items: _genders.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, we want to show a Snackbar
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    )
      );
}

/*
onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppointmentPage()),
                  );
                })*/