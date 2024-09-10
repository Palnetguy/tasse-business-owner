import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesse_business_owner/helper/init_get_x_dependecies.dart';
import 'package:tesse_business_owner/screens/cashflow/cashflow.dart';
import 'package:tesse_business_owner/screens/cashflow/cashin.dart';
import 'package:tesse_business_owner/screens/cashflow/cashout.dart';
import 'package:tesse_business_owner/screens/expense/add_expenses.dart';
import 'package:tesse_business_owner/screens/expense/edit_expenses.dart';
import 'package:tesse_business_owner/screens/expense/expenses.dart';
import 'package:tesse_business_owner/screens/home/home_screen.dart';
import 'package:tesse_business_owner/screens/layout/layout.dart';
import 'package:tesse_business_owner/screens/pos/receipt_pos.dart';
import 'package:tesse_business_owner/screens/profit%20and%20expense%20summary/net_profit_p_e.dart';
import 'package:tesse_business_owner/screens/report/graph_report.dart';
import 'package:tesse_business_owner/screens/report/net_profit_r.dart';
import 'package:tesse_business_owner/screens/report/report.dart';
import 'package:tesse_business_owner/screens/report/sales_report_r.dart';
import 'package:tesse_business_owner/screens/report/stock_report.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitGetXDependenicies(),
      title: 'Tasse Business Owner',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: tassePrimaryRed),
        useMaterial3: true,
      ),
      home: const Layout(),
    );
  }
}
