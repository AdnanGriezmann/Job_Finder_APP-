import 'package:get/get.dart';

class TagslistController extends GetxController {
  List tagsList = [];

  @override
  void onInit() {
    tagsList = [
      {
        "name": "All",
      },
      {
        "name": "⚡Popular",
      },
      {"name": "⭐Feature"}
    ];
    super.onInit();
    update();
  }

  var selected = 0;
}

 

