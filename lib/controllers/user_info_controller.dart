import 'package:flutter/cupertino.dart';

class UserInfo with ChangeNotifier{
  String? _name;
  String? _email;
  String? _profileImage;

  String? get userName => _name;
  String? get userEmail =>_email;
  String? get userImage =>_profileImage;

  void updateUserName(String name){
    _name = name;
    notifyListeners();
  }
  void updateUserEmail(String name){
    _name = name;
    notifyListeners();
  }
  void updateUserImage(String profileImage){
    _profileImage = profileImage;
    notifyListeners();
  }

}