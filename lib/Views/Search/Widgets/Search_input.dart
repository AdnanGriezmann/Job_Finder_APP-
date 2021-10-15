import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class SearchInput extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2.0.h),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2.0.h),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey,fontSize: 14.0.sp),
                contentPadding: EdgeInsets.zero,
                prefixIcon: Icon(Icons.search),
                  
                
          
          
              ),
              
          
            ),
          ),
          SizedBox(width: 2.0.w),
          Container(
            height: 4.0.h,
            width: 10.0.w,
            padding: EdgeInsets.all(0.3.h),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(2.0.h),


            ),
            child: Icon(Icons.filter_center_focus_rounded),
          ),
        ],
      ),
      
    );
  }
}