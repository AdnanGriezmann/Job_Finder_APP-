

import 'package:flutter/material.dart';
import 'package:job_finder_app/Views/Search/Widgets/SearchList.dart';
import 'package:job_finder_app/Views/Search/Widgets/Search_App_bar.dart';
import 'package:job_finder_app/Views/Search/Widgets/Search_input.dart';
import 'package:job_finder_app/Views/Search/Widgets/Search_option.dart';

class Searchpage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchAppbar(),
            SearchInput(),
            Searchoption(),
            Expanded(child: Searchlist()),
          ],

      ),
      );
      
    
  }
}