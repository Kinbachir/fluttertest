import 'package:get/get.dart';

import '../SommeController.dart';

class BindS extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SommeController>(() => SommeController());
  }
}
