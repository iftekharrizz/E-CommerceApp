import 'package:ecommerce_ui/controllers/cart_controller.dart';
import 'package:ecommerce_ui/screens/authentication/forget_password.dart';
import 'package:ecommerce_ui/screens/authentication/otp_screen.dart';
import 'package:ecommerce_ui/screens/authentication/sign_in.dart';
import 'package:ecommerce_ui/screens/authentication/sign_up.dart';
import 'package:ecommerce_ui/screens/cart_screen/cart_page.dart';
import 'package:ecommerce_ui/screens/home_screen/home_page.dart';
import 'package:ecommerce_ui/screens/payment_screen/payment_page.dart';
import 'package:ecommerce_ui/screens/product_screen/product_page.dart';
import 'package:ecommerce_ui/screens/profile_screen/profile_page.dart';
import 'package:ecommerce_ui/screens/search_screen/search_result_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'controllers/user_info_controller.dart';



void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserInfo()),
        ChangeNotifierProvider(create: (_)=> CartDetails()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E commerce',
        theme: ThemeData(
          //primarySwatch: Color(0xFF7BCFE9),
        ),
        initialRoute: SignInScreen.routeName,
        routes: {
          SignInScreen.routeName: (context) => SignInScreen(),
          SignUpScreen.routeName: (context) => SignUpScreen(),
          ForgetPasswordScreen.routeName: (context) => ForgetPasswordScreen(),
          OtpScreen.routeName: (context) => OtpScreen(),
          HomePage.routeName: (context) => HomePage(),
          ProfileScreen.routeName: (context) => ProfileScreen(),
          SearchResultPage.routeName: (_) => SearchResultPage(),
          ProductPage.routeName: (_) => ProductPage(),
          CartPage.routeName: (_) => CartPage(),
          PaymentPage.routeName: (_) => PaymentPage(),

        },
      ),
    );
  }
}

