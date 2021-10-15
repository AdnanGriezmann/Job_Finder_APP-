import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder_app/Controllers/searchController.dart';
import 'package:sizer/sizer.dart';

class Searchoption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchController>(
        init: SearchController(),
        builder: (_) {
          return Container(
            
            height: 4.0.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index)=> GestureDetector(
                onTap: (){
                  _.res = index;
                  _.update();

                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  decoration: BoxDecoration(
                     color: _.res == index  ? Colors.cyan : Colors.white,
                     borderRadius: BorderRadius.circular(2.0.h),
                     border: Border.all(color: Colors.amber),
                     

                  ),
                  child: Text(_.searchlist[index]['name'],
                  style: TextStyle(
                     color: _.res == index  ? Colors.white : Colors.red,
                  ),
                  
                  ),
                ),
              ),
              separatorBuilder: (_, index) => SizedBox(width: 3.0.w),
              itemCount: _.searchlist.length,
            ),

          );
        });
  }
}
