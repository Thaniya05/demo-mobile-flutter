import 'package:get/get.dart';

import '../controllers/show_category_controller.dart';

class ShowCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShowCategoryController>(
      () => ShowCategoryController(),
    );
  }
}
