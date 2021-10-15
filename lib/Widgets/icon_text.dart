import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Icontext extends StatelessWidget {
  final IconData icon;
  final String text;

  Icontext({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.yellow,
        ),
        SizedBox(width: 1.0.w),
        Text(
          text,
          style: TextStyle(fontSize: 10.sp,color: Colors.grey),
        ),
      ],
    );
  }
}
