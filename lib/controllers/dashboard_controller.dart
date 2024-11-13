import 'package:get/get.dart';

class DashBoardController extends GetxController {
  RxInt currentIndex = 0.obs;

  void updateIndex({required int value}) {
    currentIndex.value = value;
  }
}
