import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SearchAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 6.0.h, left: 11.0.w, right: 11.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              padding: EdgeInsets.all(1.0.h),
              decoration: BoxDecoration(
                color: Colors.teal,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.amber,
              ),
            ),
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
              Icon(Icons.more_horiz),
              
            ],
          ),
        ],
      ),
    );
  }
}
