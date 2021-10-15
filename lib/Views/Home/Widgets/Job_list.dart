import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder_app/Controllers/JoblistController.dart';
import 'package:job_finder_app/Widgets/icon_text.dart';
import 'package:sizer/sizer.dart';
class Joblist extends StatelessWidget {
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
              scrollDirection: Axis.horizontal,
              itemCount: _.productData.length,
              separatorBuilder: (_, index) => SizedBox(width: 15),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.bottomSheet(
                      //bottomsheet....
                      Container(
                        padding: EdgeInsets.all(1.0.h),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(2.0.h),
                            topRight: Radius.circular(2.0.h),
                          ),
                        ),
                        height: 60.0.h,
                        child: SingleChildScrollView(
                          child: Column(                                      
                            children: [
                              Container(
                                height: 0.4.h,
                                width: 9.0.w,
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              SizedBox(height: 2.0.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 5.0.h,
                                        width: 10.0.w,
                                        padding: EdgeInsets.all(1.0.h),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(3.0.h),
                                          color: Colors.white,
                                        ),
                                        child: Image.asset(
                                            _.productData[index].logoUrl),
                                      ),
                                      SizedBox(width: 2.0.w),
                                      Text(
                                        _.productData[index].company,
                                        style: TextStyle(
                                            fontSize: 15.0.sp,
                                            fontFamily: 'Lato'),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        _.productData[index].isMark
                                            ? Icons.bookmark
                                            : Icons.bookmark_outline_rounded,
                                        color: _.productData[index].isMark
                                            ? Colors.amber
                                            : Colors.black,
                                      ),
                                      Icon(Icons.more_vert_outlined),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 2.0.h),
                              Text(
                                _.productData[index].title,
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 2.0.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icontext(
                                      icon: Icons.location_on_outlined,
                                      text: _.productData[index].location),
                                  Icontext(
                                      icon: Icons.access_time_filled_outlined,
                                      text: _.productData[index].time),
                                ],
                              ),
                              SizedBox(height: 2.0.h),
                              Text(
                                'Requirement',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Lato',
                                    fontSize: 14.0.sp),
                              ),
                              SizedBox(height: 3.0.h),
                              ..._.productData[index].req
                                  .map((e) => Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              margin:
                                                  EdgeInsets.only(top: 1.0.h),
                                              height: 1.2.h,
                                              width: 2.0.w,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(width: 1.0.w),
                                            ConstrainedBox(
                                              constraints: BoxConstraints(
                                                maxWidth: 90.0.w,
                                              ),
                                              child: Text(
                                                e,
                                                style: TextStyle(
                                                    //wordSpacing: 1.2,
                                                    height: 1.1,),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )).toList(),
                                      Container(
                                        margin: EdgeInsets.symmetric(vertical: 2.0.h),
                                        height: 5.0.h,
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            elevation: 1.0,
                                            primary: Colors.teal,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(2.0.h),
                                            ),
                                          ),
                                          onPressed: (){},
                                          child: Text('Apply Now')
                                        ),
                                      )                                         
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: Container(
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
                  ),
                );
              },
            ),
          );
       }
       ); 
       }
       }
