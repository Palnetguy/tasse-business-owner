import 'package:get/get.dart';

class SuppliersController extends GetxController {
  // Initial value of the current entry index
  int _currentEntry = 0;

  // Getter for the current entry
  int get currentEntry => _currentEntry;

  // Method to update the current entry
  void updateCurrentEntry(int newEntry) {
    _currentEntry = newEntry;
    update(); // This calls GetX's update method to update the UI
  }
}
