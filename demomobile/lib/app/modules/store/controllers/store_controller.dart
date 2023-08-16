import 'package:get/get.dart';

class StoreController extends GetxController {
  //TODO: Implement StoreController

  final testimg =
      "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif";
  final ex_str =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus suscipit molestie sapien vitae iaculis. Proin dictum lorem id lorem aliquet placerat. In hac habitasse platea dictumst. Curabitur sit amet metus vel dui pretium vehicula semper sed neque. Donec felis mi, tempor id nulla id, vestibulum pretium tortor. Maecenas orci mauris, dapibus eu urna sit amet, cursus hendrerit sapien. Proin lobortis a tellus eget congue. Donec tempus felis nec libero";
  RxInt count = 0.obs;
  RxInt count_news = 0.obs;
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

  void updateIndicator(int i) => count.value = i;

  void updateNews(int i) => count_news.value = i;
}
