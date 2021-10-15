import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:get/get.dart';
class Setting extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    
        title: Text('Setting',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),

        
        ),
      ),
      backgroundColor: Colors.white,
       body: SafeArea(
         child:  ListView(
             
           padding: EdgeInsets.all(3.0.h),
           children: [
             
             SettingsGroup(
               
               title: 'GENERAL',
               
               
               children: [
                 SizedBox(height: 2.0.h,),
                  SimpleSettingsTile(
                   
                   title: 'Account Setting',
                   subtitle: 'Privacy,Security',
                   
                   leading: (Icon (Icons.account_circle,color: Colors.blue)),
                   
                   child: SettingsScreen(
                     
                     title: 'Account Setting',
                     children: [
                       SimpleSettingsTile(
                         title: 'Privacy',
                         subtitle: '',
                        leading: (Icon (Icons.privacy_tip,color: Colors.blue)
                        ),
                        // onTap: ()=> Get.snackbar('Delete', 'Delete your account permanent'),
                       ),
                       SimpleSettingsTile(
                         title: 'Security',
                         subtitle: '',
                        leading: (Icon (Icons.security,color: Colors.blue)),
                       // onTap: ()=> Get.snackbar('Delete', 'Delete your account permanent'),

                       ),

                      



                     ],
                   ),
                   

                 ),

                 SimpleSettingsTile(
                   
                   title: 'Delete Account',
                   subtitle: 'Delete your Account',
                   leading: (Icon (Icons.delete,color: Colors.blue)),
                   onTap: ()=> Get.snackbar('Delete', 'Delete your account permanent'),

                 ),
                
                 
               ],
             ),
              SettingsGroup(
               
               title: 'FEEDBACK',
               
               children: [
                 SizedBox(height: 2.0.h,),
                 SimpleSettingsTile(
                   title: 'Report a Bug',
                   subtitle: '',
                   leading: (Icon (Icons.report,color: Colors.blue)),
                   onTap: ()=> Get.snackbar('Report', 'Your account reported'),

                 ),
                  SimpleSettingsTile(
                   title: 'Send Feedback',
                   subtitle: '',
                   leading: (Icon (Icons.feedback, color: Colors.blue)),
                  // onTap: ()=> Get.snackbar('Report', 'Your account reported'),

                 ),
               ],
             ),

           ],

         ),
       
       
       ),
      
    );
  }
}