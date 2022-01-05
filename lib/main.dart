import 'package:ecommerce_ui/screens/authentication/forget_password.dart';
import 'package:ecommerce_ui/screens/authentication/otp_screen.dart';
import 'package:ecommerce_ui/screens/authentication/sign_in.dart';
import 'package:ecommerce_ui/screens/authentication/sign_up.dart';
import 'package:ecommerce_ui/screens/home_screen/home_page.dart';
import 'package:ecommerce_ui/screens/profile_screen/profile_page.dart';
import 'package:ecommerce_ui/screens/search_screen/search_result_page.dart';
import 'package:flutter/material.dart';
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
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
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
        },
      ),
    );
  }
}

