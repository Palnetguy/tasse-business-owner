import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/helper/init_get_x_dependecies.dart';
import 'package:tesse_business_owner/screens/attendants/attendants.dart';
import 'package:tesse_business_owner/screens/attendants/attendants_profile.dart';
import 'package:tesse_business_owner/screens/customers/customer_wallet.dart';
import 'package:tesse_business_owner/screens/register/shop_registration.dart';
import 'package:tesse_business_owner/screens/shops/choose_shop_category.dart';
import 'package:tesse_business_owner/screens/shops/create_shop.dart';
import 'package:tesse_business_owner/screens/shops/each_shop.dart';
import 'package:tesse_business_owner/screens/shops/shops.dart';
import 'package:tesse_business_owner/screens/user%20profile/user_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitGetXDependenicies(),
      title: 'Tesse Business Owner',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: tassePrimaryRed),
        useMaterial3: true,
      ),
      home: const UserProfile(),
    );
  }
}
