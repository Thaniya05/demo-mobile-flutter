import 'package:get/get.dart';

class HubController extends GetxController {
  //TODO: Implement HubController

  final count = 0.obs;
  RxBool mybool = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void isClick() {
    mybool.value = !mybool.value;
    print(mybool);
    update();
  }
}
