import 'package:flutter/material.dart';
Color color_data=Colors.black;
IconData icon= Icons.all_inclusive;
List<Color> color_C = [
  Colors.black,
  Colors.blue,
  Colors.red,
  Colors.limeAccent,
  Colors.pinkAccent,
  Colors.grey,
  Colors.cyanAccent
];

List<IconData> icon_I= [
  Icons.add,
  Icons.access_alarms_rounded,
  Icons.account_box,
  Icons.add_alert_rounded,
  Icons.add_circle,
  Icons.ad_units_sharp,
  Icons.account_balance_sharp
];
Container color_icon(double h, double w, String name) {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.all(10),
    height: h / 12,
    width: w,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: const [
        BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 5),
      ],
      borderRadius: BorderRadius.circular(15),
    ),
    child: Text(
      name,
      style: TextStyle(
          color:const  Color(0xffB2B2B2),
          fontSize: h / 34,
          fontWeight: FontWeight.w500),
    ),
  );
}
