import 'package:get/get.dart';
import 'package:tesse_business_owner/controllers/attendants/attendants_controller.dart';
import 'package:tesse_business_owner/controllers/customers/customers_controller.dart';
import 'package:tesse_business_owner/controllers/forgot%20password/forgort_password_controller.dart';
import 'package:tesse_business_owner/controllers/home/home_controller.dart';
import 'package:tesse_business_owner/controllers/notifications/notifications_controller.dart';
import 'package:tesse_business_owner/controllers/pos/pos_controller.dart';
import 'package:tesse_business_owner/controllers/register/businesss_owner_login_controller.dart';
import 'package:tesse_business_owner/controllers/register/businesss_owner_register_controller.dart';
import 'package:tesse_business_owner/controllers/register/businesss_owner_shop_registration_controller.dart';
import 'package:tesse_business_owner/controllers/sales%20and%20order/sales_and_order.dart';
import 'package:tesse_business_owner/controllers/shop/shop_controller.dart';
import 'package:tesse_business_owner/controllers/stock/stock_controller.dart';
import 'package:tesse_business_owner/controllers/suppliers/suppliers_controller.dart';
import 'package:tesse_business_owner/controllers/user%20profile/user_profile_controller.dart';

class InitGetXDependenicies implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BusinessOwnerLogInController());
    Get.lazyPut(() => BusinessOwnerRegisterController());
    Get.lazyPut(() => BusinessOwnerShopRegistrationController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ForgotPasswordController());
    Get.lazyPut(() => SuppliersController());
    Get.lazyPut(() => NotificationsController());
    Get.lazyPut(() => CustomersController());
    Get.lazyPut(() => ShopController());
    Get.lazyPut(() => AttendantsController());
    Get.lazyPut(() => UserProfileController());
    Get.lazyPut(() => StocksController());
    Get.lazyPut(() => PosController());
    Get.lazyPut(() => SalesAndOrderController());
  }
}
