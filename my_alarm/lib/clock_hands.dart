import 'package:my_alarm/hand_hour.dart';
import 'package:my_alarm/hand_minute.dart';
import 'package:my_alarm/hand_second.dart';
import 'package:flutter/material.dart';



class ClockHands extends StatelessWidget {
  final DateTime dateTime;

  ClockHands({this.dateTime});

  @override
  Widget build(BuildContext context) {
    return new AspectRatio(
        aspectRatio: 1.0,
        child: new Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            child: new Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  new CustomPaint( painter: new HourHandPainter(
                      hours: dateTime.hour, minutes: dateTime.minute),
                  ),
                  new CustomPaint(painter: new MinuteHandPainter(
                      minutes: dateTime.minute, seconds: dateTime.second),
                  ),
                  new CustomPaint(painter: new SecondHandPainter(seconds: dateTime.second),
                  ),
                ]
            )
        )

    );
  }
}
