import 'package:get/get.dart';

class MyHomePageController extends GetxController with StateMixin<int> {
  // final RxInt count = RxInt(0);
  @override
  void onInit() {
    super.onInit();
    append(() => () => Future.value(1));
  }
}
