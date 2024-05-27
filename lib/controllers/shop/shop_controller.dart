import 'package:get/get.dart';

class ShopController extends GetxController {
  // state manage here....

  // the backup seting
  bool _isBackupSettingsOpen = false;

  // Getter for the current entry
  bool get isBackupSettingsOpen => _isBackupSettingsOpen;

  // Method to update the current entry
  void updateisBackupSettingsOpen() {
    _isBackupSettingsOpen = !_isBackupSettingsOpen;
    update(); // This calls GetX's update method to update the UI
  }

  // the allow backup
  bool _isAllowBackUpOpen = false;

  // Getter for the current entry
  bool get isAllowBackUpOpen => _isAllowBackUpOpen;

  // Method to update the current entry
  void updateisAllowBackUpOpen() {
    _isAllowBackUpOpen = !_isAllowBackUpOpen;
    update(); // This calls GetX's update method to update the UI
  }
}
