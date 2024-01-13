import 'package:get/get.dart';

class CategoryController extends GetxController {
  RxString _selectedCategory = ''.obs;
  String get getSelectedCategory => _selectedCategory.value;

  set setSelectedCategory(String newValue) {
    _selectedCategory.value = newValue;
  }

  RxString _selectedTitle = ''.obs;
  String get getSelectedTitle => _selectedTitle.value;

  set setSelectedTitle(String newValue) {
    _selectedTitle.value = newValue;
  }
}
