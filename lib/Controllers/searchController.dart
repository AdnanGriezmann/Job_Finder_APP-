import 'package:get/get.dart';

class SearchController extends GetxController {
  List searchlist = [];

  void onInit() {
    searchlist = [
      {
      'name': 'Development'


    },{
      'name': 'Trending'
    },{
      'name': 'Awesome'
    },
    {
         'name': 'Factory'
    }



    ];
        



    super.onInit();
    update();
  }

  var res = 0;
}
