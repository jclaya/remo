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
    body: new Column(
        
      children: <Widget>[ 
        Form(
          key: _formKey,
          child: Column(
              children: <Widget>[
                Text('HAVE AN APPOINTMENT HERE'),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.accessibility),
                    hintText: 'AGE',
                    labelText: 'age   ',
                  ),
                ),
                Text('GENDER'),
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
              child: Text('Get an APPOINTMENT'),
            ),
          ),
        ],
      ),
    )],
    ), 
   
  );
}

/*
onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppointmentPage()),
                  );
                })*/