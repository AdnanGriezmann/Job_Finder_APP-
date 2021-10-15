import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder_app/Controllers/JoblistController.dart';
import 'package:job_finder_app/Widgets/icon_text.dart';
import 'package:sizer/sizer.dart';
class Searchlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<JoblistController>(
        init: JoblistController(),
        builder: (_) {
           return Container(
            margin: EdgeInsets.symmetric(vertical: 5.0.h),
            height: 25.0.h,
            child: ListView.separated(
              
              padding: EdgeInsets.symmetric(horizontal: 3.0.h),
              scrollDirection: Axis.vertical,
              itemCount: _.productData.length,
              separatorBuilder: (_, index) => SizedBox(height: 2.0.h),
              itemBuilder: (context, index) {
                return Container(
                  width: 70.0.w,
                  padding: EdgeInsets.all(2.0.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.0.h),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 4.0.h,
                                width: 9.0.w,
                                padding: EdgeInsets.all(1.0.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0.h),
                                  color: Colors.white,
                                ),
                                child: Image.asset(
                                  _.productData[index].logoUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(width: 4.0.w),
                              Text(
                                _.productData[index].company,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0.sp,
                                    fontFamily: 'Lato'),
                              ),
                            ],
                          ),
                          Icon(
                            _.productData[index].isMark
                                ? Icons.bookmark
                                : Icons.bookmark_outline_outlined,
                            color: _.productData[index].isMark
                                ? Colors.amber
                                : Colors.black,
                          ),
                        ],
                      ),
                      SizedBox(height: 2.0.h),
                      Text(
                        _.productData[index].title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 2.0.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icontext(
                              icon: Icons.location_on_outlined,
                              text: _.productData[index].location),
                          Icontext(
                              icon: Icons.access_time_filled_outlined,
                              text: _.productData[index].time),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          );

         
        


          
        });
  }
}
