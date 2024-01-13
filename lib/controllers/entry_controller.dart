import 'package:get/get.dart';

class TabIndexController extends GetxController {
  RxInt _selectedTabIndex = 0.obs;
  // getter function to obtain the value for tab inedx
  int get selectedTabIndex => _selectedTabIndex.value;
  set setSelectedTabIndex(int newValue) {
    _selectedTabIndex.value = newValue;
  }
}
