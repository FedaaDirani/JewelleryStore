import 'package:flutter/material.dart';
import 'package:jewelrey_store/dashboard/add_catg.dart';
import 'package:jewelrey_store/dashboard/add_product.dart';
import 'package:jewelrey_store/dashboard/add_replay.dart';
import 'package:jewelrey_store/dashboard/add_users.dart';
import 'package:jewelrey_store/dashboard/categories.dart';
import 'package:jewelrey_store/dashboard/chating.dart';
import 'package:jewelrey_store/dashboard/chats.dart';
import 'package:jewelrey_store/dashboard/dashboard_screen.dart';
import 'package:jewelrey_store/dashboard/edit_categories.dart';
import 'package:jewelrey_store/dashboard/log_in_admin.dart';
import 'package:jewelrey_store/dashboard/menu.dart';
import 'package:jewelrey_store/dashboard/products.dart';
import 'package:jewelrey_store/dashboard/users.dart';
import 'package:jewelrey_store/modules/about_store.dart';
import 'package:jewelrey_store/modules/chating.dart';
import 'package:jewelrey_store/modules/check_out1.dart';
import 'package:jewelrey_store/modules/check_out2.dart';
import 'package:jewelrey_store/modules/check_out3.dart';
import 'package:jewelrey_store/modules/check_out4.dart';
import 'package:jewelrey_store/modules/choose_payment_credit_card.dart';
import 'package:jewelrey_store/modules/choose_payment_via_alharam.dart';
import 'package:jewelrey_store/modules/choose_payment_via_bank_transfer.dart';
import 'package:jewelrey_store/modules/done.dart';
import 'package:jewelrey_store/modules/enter_the_information1.dart';
import 'package:jewelrey_store/modules/enter_the_information2.dart';
import 'package:jewelrey_store/modules/failed.dart';
import 'package:jewelrey_store/modules/favorite_screen.dart';
import 'package:jewelrey_store/modules/filter_screen.dart';
import 'package:jewelrey_store/modules/forget_password.dart';
import 'package:jewelrey_store/modules/get_started.dart';
import 'package:jewelrey_store/modules/home_screen.dart';
import 'package:jewelrey_store/modules/map.dart';
import 'package:jewelrey_store/modules/my_cart.dart';
import 'package:jewelrey_store/modules/my_profile.dart';
import 'package:jewelrey_store/modules/no_return.dart';
import 'package:jewelrey_store/modules/order_history.dart';
import 'package:jewelrey_store/modules/product.dart';
import 'package:jewelrey_store/modules/return_screen.dart';
import 'package:jewelrey_store/modules/see_more_and_categories.dart';
import 'package:jewelrey_store/modules/sign_in.dart';
import 'package:jewelrey_store/modules/start_page.dart';

import 'package:flutter/services.dart';
import 'package:jewelrey_store/modules/successfully_pay.dart';
import 'package:jewelrey_store/modules/test.dart';
import 'package:jewelrey_store/modules/vetification.dart';

void main() {
  runApp(MyApp());
}
  class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  @override
  // void initState() {
  //   // TODO: implement initState
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
  //   super.initState();
  // } // hide status bar
  Widget build(BuildContext context) {
  return MaterialApp(
  debugShowCheckedModeBanner: false,


      home: StartPage(),


  );
  }
}



