import 'package:foodshop/logic/controller/main_app_controller.dart';
import 'package:get/get.dart';

class MainAppBininding implements Bindings {
  @override
  void dependencies() {
    Get.put(MainAppController());
  }
}
