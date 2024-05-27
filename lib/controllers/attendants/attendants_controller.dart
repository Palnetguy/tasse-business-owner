import 'package:get/get.dart';

class AttendantsController extends GetxController {
  // state manage here....

  // PERMISSIONS
  // POS
  bool _posPermissionOpen = false;
  bool get posPermissionOpen => _posPermissionOpen;
  void updateposPermissionOpen() {
    _posPermissionOpen = !_posPermissionOpen;
    update(); // This calls GetX's update method to update the UI
  }

  // STOCK
  bool _stockPermissionOpen = false;
  bool get stockPermissionOpen => _stockPermissionOpen;
  void updatestockPermissionOpen() {
    _stockPermissionOpen = !_stockPermissionOpen;
    update(); // This calls GetX's update method to update the UI
  }

  // SALES
  bool _salePermissionOpen = false;
  bool get salePermissionOpen => _salePermissionOpen;
  void updatesalePermissionOpen() {
    _salePermissionOpen = !_salePermissionOpen;
    update(); // This calls GetX's update method to update the UI
  }

  // ACCOUNT
  bool _accountPermissionOpen = false;
  bool get accountPermissionOpen => _accountPermissionOpen;
  void updateaccountPermissionOpen() {
    _accountPermissionOpen = !_accountPermissionOpen;
    update(); // This calls GetX's update method to update the UI
  }

  // EXPENSES
  bool _expensesPermissionOpen = false;
  bool get expensesPermissionOpen => _expensesPermissionOpen;
  void updateexpensesPermissionOpen() {
    _expensesPermissionOpen = !_expensesPermissionOpen;
    update(); // This calls GetX's update method to update the UI
  }

  // SUPPLIERS
  bool _suppliersPermissionOpen = false;
  bool get suppliersPermissionOpen => _suppliersPermissionOpen;
  void updatesuppliersPermissionOpen() {
    _suppliersPermissionOpen = !_suppliersPermissionOpen;
    update(); // This calls GetX's update method to update the UI
  }

  // CUSTOMERS
  bool _customersPermissionOpen = false;
  bool get customersPermissionOpen => _customersPermissionOpen;
  void updatecustomersPermissionOpen() {
    _customersPermissionOpen = !_customersPermissionOpen;
    update(); // This calls GetX's update method to update the UI
  }

  // SHOP
  bool _shopPermissionOpen = false;
  bool get shopPermissionOpen => _shopPermissionOpen;
  void updateshopPermissionOpen() {
    _shopPermissionOpen = !_shopPermissionOpen;
    update(); // This calls GetX's update method to update the UI
  }

  // ATTENDANTS
  bool _attendantsPermissionOpen = false;
  bool get attendantsPermissionOpen => _attendantsPermissionOpen;
  void updateattendantsPermissionOpen() {
    _attendantsPermissionOpen = !_attendantsPermissionOpen;
    update(); // This calls GetX's update method to update the UI
  }

  // USAGE
  bool _usagePermissionOpen = false;
  bool get usagePermissionOpen => _usagePermissionOpen;
  void updateusagePermissionOpen() {
    _usagePermissionOpen = !_usagePermissionOpen;
    update(); // This calls GetX's update method to update the UI
  }

  // SUPPORT
  bool _supportPermissionOpen = false;
  bool get supportPermissionOpen => _supportPermissionOpen;
  void updatesupportPermissionOpen() {
    _supportPermissionOpen = !_supportPermissionOpen;
    update(); // This calls GetX's update method to update the UI
  }
}
