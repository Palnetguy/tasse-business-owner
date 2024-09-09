import 'package:get/get.dart';

class StocksController extends GetxController {
// state here

  var _testProducts = [];

  // Getter for the current entry
  List get testProducts => _testProducts;

  void updateSelectedProducts(prodname) {
    _testProducts = [
      {"name": prodname}
    ];
    update(); // This calls GetX's update method to update the UI
  }

  void deleteSelectedProducts() {
    _testProducts = [];
    update(); // This calls GetX's update method to update the UI
  }
}
