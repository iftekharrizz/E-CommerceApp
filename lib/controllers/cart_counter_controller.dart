import 'package:get/get.dart';

class CounterController extends GetxController{
  var counter = 1.obs;

  void increment()
  {
    counter++;
  }
  void decrement(){
    counter--;
  }

}