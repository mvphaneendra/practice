import 'package:get/get.dart';
import 'package:getx_reactive/model.dart';

class PreethiController extends GetxController {
  var student = Student();

  void incrementByOne() {
    student.age.value++;
  }

  void decrementByOne() {
    student.age.value--;
  }

  void toUpper() {
    student.name.value = student.name.value.toUpperCase();
  }

  void toLower() {
    student.name.value = student.name.value.toLowerCase();
  }
}
