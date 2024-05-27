import 'package:get/get.dart';

class CustomersController extends GetxController {
  // state manage here....

  // this is to manage the state of the profile tabs
  int _currentEntryProfile = 0;

  // Getter for the current entry
  int get currentEntryProfile => _currentEntryProfile;

  // Method to update the current entry
  void updateCurrentEntryProfile(int newEntry) {
    _currentEntryProfile = newEntry;
    update(); // This calls GetX's update method to update the UI
  }

  // this is to manage the state of the Wallet tabs
  int _currentEntryWallet = 0;

  // Getter for the current entry
  int get currentEntryWallet => _currentEntryWallet;

  // Method to update the current entry
  void updateCurrentEntryWallet(int newEntry) {
    _currentEntryWallet = newEntry;
    update(); // This calls GetX's update method to update the UI
  }

  bool _isAnonymusCustomer = false;

  // Getter for the current entry
  bool get isAnonymusCustomer => _isAnonymusCustomer;

  // Method to update the current entry
  void updateisAnonymusCustomer(bool value) {
    _isAnonymusCustomer = value;
    update(); // This calls GetX's update method to update the UI
  }
}
