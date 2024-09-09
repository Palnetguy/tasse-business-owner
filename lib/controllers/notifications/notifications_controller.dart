import 'package:get/get.dart';


class NotificationsController extends GetxController {
  RxBool isNotification = false.obs;
  final notifications =
      List<String>.generate(10, (i) => 'Notification ${i + 1}');
  int itemCount = 4;

  void deleteNotification(index) {
    notifications.removeAt(index);
    update();
  }
}
