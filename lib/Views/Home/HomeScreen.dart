import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder_app/Controllers/themeController.dart';

import 'package:job_finder_app/Views/Home/Widgets/Home_App_Bar.dart';
import 'package:job_finder_app/Views/Home/Widgets/Job_list.dart';
import 'package:job_finder_app/Views/Home/Widgets/Search_card.dart';
import 'package:job_finder_app/Views/Home/Widgets/Tag_list.dart';
import 'package:job_finder_app/Views/Home/Widgets/drawer.dart';
import 'package:job_finder_app/Views/Search/Search.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  final controller = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Job Finder App',
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.amber,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          GetBuilder<ThemeController>(
              init: ThemeController(),
              builder: (_) => Switch(
                  value: _.isDark,
                  onChanged: (state) {
                    _.update();
                    _.cchangetheme(state);
                  })),
        ],
      ),
      drawer: Sidebar(),

      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.grey.withOpacity(0.1),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HomeAppbar(),
                  SearchCard(),
                  TagList(),
                  Joblist(),
                ],
              ),
            ],
          ),
        ),
      ),

      //BottomBar....

      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {
          Get.to(Searchpage());
        },
        child: Icon(Icons.add, color: Colors.white),
        elevation: 0,
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.teal,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home, size: 4.0.h),
            ),
            BottomNavigationBarItem(
              label: 'Case',
              icon: Icon(Icons.cases_outlined, size: 4.0.h),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Text(''),
            ),
            BottomNavigationBarItem(
              label: 'Chat',
              icon: Icon(Icons.chat_outlined, size: 4.0.h),
            ),
            BottomNavigationBarItem(
              label: 'Person',
              icon: Icon(Icons.person_outlined, size: 4.0.h),
            ),
          ],
        ),
      ),
    );
  }
}
