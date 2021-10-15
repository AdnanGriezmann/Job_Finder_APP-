import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   

    return Container(
      padding: EdgeInsets.only(top: 4.0.h, left: 11.0.w, right: 11.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Welcome home',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold)),
              SizedBox(height: 1.0.h),
              Text(
                'Adnan Griezmann',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0.sp,
                    fontFamily: 'Lato'),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 2.0.h, right: 1.0.h),
                transform: Matrix4.rotationZ(100),
                child: Stack(
                  children: [
                    Icon(Icons.notifications_none_outlined,
                        size: 30, color: Colors.grey),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(1.0.w),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 2.0.w),
              ClipOval(
                child: Image.asset('Assets/images/spls.png', width: 9.0.w),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
