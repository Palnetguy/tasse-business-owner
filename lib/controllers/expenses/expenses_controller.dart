import 'package:get/get.dart';

class ExpensesController extends GetxController {
// the allow backup
  bool _isRecurringExpensesOpen = true;

  // Getter for the current entry
  bool get isRecurringExpensesOpen => _isRecurringExpensesOpen;

  // Method to update the current entry
  void updateisRecurringExpenses() {
    _isRecurringExpensesOpen = !_isRecurringExpensesOpen;
    update(); // This calls GetX's update method to update the UI
  }
}
