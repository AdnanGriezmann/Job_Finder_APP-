import 'package:get/get.dart';
import 'package:job_finder_app/Models/Job.dart';

class JoblistController extends GetxController {
  List<Job> productData = [];

  @override
  void onInit() {
    super.onInit();
    fatchproductData();
  }

  fatchproductData() {
    List<Job> serverResponse = [
      Job(
        'Google LLC',
        'Assets/icons/gl.png',
        false,
        'principle Product Design',
        '417 Marion,New York\nUnited States',
        'Full Time',
        [
          'Creative with an eye for shape and colour',
          'Understand different materials and production',
          'How techincal,practical and scientific knowledge',
          'Interested in the way people choose and use\nproducts'
        ],
      ),
      Job(
        'Airbnb co7',
        'Assets/icons/ar.png',
        true,
        'N desing and publishing',
        'New York\nUnited States 666',
        'Full Time',
        [
          'Creative with an eye for shape and colour',
          'Understand different materials and production',
          'How techincal,practical and scientific knowledge',
          'Interested in the way people choose and use products'
        ],
      ),
      Job(
        'Facebook limited',
        'Assets/icons/fb.png',
        true,
        'Marketing value',
        '676 spain main dor',
        'Part Time',
        [
          'Creative with an eye for shape and colour',
          'Understand different materials and production',
          'How techincal,practical and scientific knowledge',
          'Interested in the way people choose and use products'
        ],
      ),
    ];

    productData.assignAll(serverResponse);
    update();
  }
}
