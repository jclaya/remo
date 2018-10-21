import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;

class Dashboard extends StatefulWidget {
  @override
  DashboardState createState() => new DashboardState();
}

class DashboardState extends State<Dashboard> {
  DateTime _currentDate = DateTime.now();

  @override
  Widget build(BuildContext context) => new Container(
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new CalendarCarousel(
                onDayPressed: (DateTime date) {
                  this.setState(() => _currentDate = date);
                },
                weekendTextStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                thisMonthDayBorderColor: Colors.grey,
                height: 420.0,
                selectedDateTime: _currentDate,
                daysHaveCircularBorder: false,

                /// null for not rendering any border, true for circular border, false for rectangular border
              ),
            ]),
      );
}
