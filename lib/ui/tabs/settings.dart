import 'package:flutter/material.dart';

class ProfileFormModel {
  String name;
  String email;
  int age;
  String gender;
  String address;
  int contact_number;
  int weight;
  int height;

  ProfileFormModel({
    this.name,
    this.email,
    this.age,
    this.gender,
    this.address,
    this.contact_number,
    this.weight,
    this.height
  });
}

class Settings extends StatefulWidget {
  Settings({Key key}) : super(key: key);

  State<StatefulWidget> createState() => new _SettingsState();
}

class _SettingsState extends State<Settings> {
  final _formKey = GlobalKey<FormState>();
  
  List<String> _genders = <String>['Male', 'Female'];
  String _gender = 'Male';
  
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey we created above
    return new SingleChildScrollView(
    
      child: new Column(
      children: <Widget>[
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: 'Enter your first and last name',
                  labelText: 'name',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.email),
                  hintText: 'Enter your email',
                  labelText: 'email   ',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.accessibility),
                  hintText: 'Enter your age',
                  labelText: 'age',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                },
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

              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.home),
                  hintText: 'Address',
                  labelText: 'address',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.accessibility),
                  hintText: 'Weight',
                  labelText: 'weight',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.accessibility),
                  hintText: 'Height',
                  labelText: 'height  ',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                },
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
      ],
      

      )
    
    );

    
  }
}
