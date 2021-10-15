import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:job_finder_app/Views/Settingpage/Settings.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Column(
              children: [
                CircleAvatar(radius: 4.0.h, backgroundColor: Colors.black26),
                SizedBox(height: 4.0),
                Text('AdnanGriezmann'),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
            onTap: () {
              Get.to(Setting(), transition: Transition.rightToLeft);
            },
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () {
              Share.share(
                  "https://play.google.com/store/apps/details?id=com.example.job_finder_app");
            },
          ),
          ListTile(
            leading: Icon(Icons.rate_review),
            title: Text('Rate Us'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout_rounded),
            title: Text('Logout'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
