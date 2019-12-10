import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {

  final double _smallFontSize = 12;
  final double _valFontSize = 30;
  final FontWeight _smallFontWeight = FontWeight.w500;
  final FontWeight _valFontWeight = FontWeight.w700;
  final Color _fontColor = Color(0xff5b6990);
  final double _smallFontSpacing = 1.3;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      alignment: Alignment.topCenter,
      child: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "AVERAGE SLEEP",
                    style: TextStyle(
                      fontWeight: _smallFontWeight,
                      fontSize: _smallFontSize,
                      letterSpacing: _smallFontSpacing,
                      color: _fontColor
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "6.45h",
                    style: TextStyle(
                      fontWeight: _valFontWeight,
                      fontSize: _valFontSize,
                      color: _fontColor
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "AVERAGE SLEEP",
                    style: TextStyle(
                        fontWeight: _smallFontWeight,
                        fontSize: _smallFontSize,
                        letterSpacing: _smallFontSpacing,
                        color: _fontColor
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "6.45h",
                    style: TextStyle(
                        fontWeight: _valFontWeight,
                        fontSize: _valFontSize,
                        color: _fontColor
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          new RecordItem(fontColor: _fontColor, smallFontSpacing: _smallFontSpacing, day: "MONDAY"),
          new RecordItem(fontColor: _fontColor, smallFontSpacing: _smallFontSpacing, day: "TUESDAY"),
          new RecordItem(fontColor: _fontColor, smallFontSpacing: _smallFontSpacing, day: "WEDNESDAY"),
          new RecordItem(fontColor: _fontColor, smallFontSpacing: _smallFontSpacing, day: "THURSDAY"),
          new RecordItem(fontColor: _fontColor, smallFontSpacing: _smallFontSpacing, day: "FRIDAY"),
          new RecordItem(fontColor: _fontColor, smallFontSpacing: _smallFontSpacing, day: "SATURDAY"),
          new RecordItem(fontColor: _fontColor, smallFontSpacing: _smallFontSpacing, day: "SUNDAY")

        ],
      ),
    );
  }
}

class RecordItem extends StatelessWidget {
  const RecordItem({
    Key key,
    @required Color fontColor,
    @required double smallFontSpacing,
    @required this.day,
  }) : _fontColor = fontColor, _smallFontSpacing = smallFontSpacing, super(key: key);

  final Color _fontColor;
  final double _smallFontSpacing;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffdde9f7),
            width: 1.5
          )
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            this.day,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: _fontColor
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: <Widget>[
              Text(
                "01/21/2019",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  letterSpacing: _smallFontSpacing,
                  color: _fontColor
                ),
              ),
              SizedBox(width: 25),
              Expanded(
                child: Text(
                  "45.3 MINUTES",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      letterSpacing: _smallFontSpacing,
                      color: _fontColor
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
