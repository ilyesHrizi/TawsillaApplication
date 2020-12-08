import 'package:get/get.dart';
import '../RegisterControllers.dart';
class RegisterUserBinding extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut<RegisterControllers>(() => RegisterControllers());
  }

}