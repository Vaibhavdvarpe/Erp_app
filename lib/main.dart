
import 'package:erp_app/pages_erp/change_password.dart';
import 'package:erp_app/pages_erp/forgot_pass.dart';
import 'package:erp_app/pages_erp/loginpage.dart';
import 'package:erp_app/pages_erp/otp_page.dart';
import 'package:erp_app/pages_erp/practice.dart';

import 'package:flutter/material.dart';
import 'package:erp_app/pages_erp/get_started_page.dart';
import 'package:erp_app/utils/routes/routes.dart';

void main() {
  runApp( ErpApp());
}

class ErpApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      checkerboardOffscreenLayers: false,
      initialRoute:MyRoutes.PracticeRoute,
      routes: {
        "/":(context) => getStarted(),
        MyRoutes.get_startedRoute:(context) => SafeArea(child: getStarted()),
        MyRoutes.LoginPageRoute:(context) => SafeArea(child: const LoginPage()),
        MyRoutes.ForgotPassRoute:(context) => SafeArea(child: const ForgotPass()),
        MyRoutes.ChangePassRoute:(context) => SafeArea(child: const ChangePass()),
        MyRoutes.OtpPageRoute:(context) => SafeArea(child: OtpPage()),
        MyRoutes.PracticeRoute:(context) => Practice(),
      },
    );}}