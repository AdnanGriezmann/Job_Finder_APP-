import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder_app/Controllers/ListController.dart';
import 'package:sizer/sizer.dart';

class TagList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TagslistController>(
        init: TagslistController(),
        builder: (_) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 6.0.h),
            height: 4.0.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    _.selected = index;
                    _.update();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 2.0.h,vertical: 1.0.h),
                    decoration: BoxDecoration(
                      color: _.selected == index ? Colors.cyan : Colors.white,
                      borderRadius: BorderRadius.circular(2.0.h),
                      border: Border.all(
                        color: _.selected == index ? Theme.of(context).primaryColor : Colors.white,
                      ),
                    ),
                    child: Text('${_.tagsList[index]['name']}'),
                  )),
              separatorBuilder: (_, index) => SizedBox(width: 1.0.h),
              itemCount: _.tagsList.length,
            ),
          );
        });
  }
}
