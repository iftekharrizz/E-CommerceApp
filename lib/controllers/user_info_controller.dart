import 'package:flutter/cupertino.dart';

class UserInfo with ChangeNotifier{
  String? _name;
  String? _email;

  String? get userName => _name;
  String? get userEmail =>_email;

  void updateUserName(String name){
    _name = name;
    notifyListeners();
  }
  void updateUserEmail(String name){
    _name = name;
    notifyListeners();
  }

}