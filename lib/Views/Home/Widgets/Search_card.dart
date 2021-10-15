import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SearchCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3.0.h),
      padding: EdgeInsets.symmetric(horizontal: 2.0.h, vertical: 3.0.h),
      height: 29.0.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.0.h),
        image: DecorationImage(
            image: AssetImage('Assets/images/serch.jpg'), fit: BoxFit.cover),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Fast Search',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 21.sp,
                fontFamily: 'Lato'),
          ),
          SizedBox(height: 2.0.h),
          Text('You can search quickly for\nthe job you want',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0.sp)),
          SizedBox(height: 2.0.h),
          TextField(
            style: TextStyle(color: Colors.amber),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3.0.h),
                borderSide: BorderSide(color: Colors.white, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3.0.h),
                  borderSide: BorderSide(color: Colors.white, width: 2)),
              prefixIcon:
                  Icon(Icons.search_rounded, size: 22, color: Colors.white),
              hintText: 'Search',
              hintStyle: TextStyle(
                  color: Colors.amber,
                  fontSize: 12.0.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
