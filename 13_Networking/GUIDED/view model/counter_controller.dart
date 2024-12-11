import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;

  get incrementCounter => null;

  get decrementCounter => null;

  void _incrementCounter() {
    counter++;
  }

  void _decrementCounter() {
    counter++;
  }

  void GetSnackBar() {
    Get.snackbar('GetX Snackbar', 'Ini SnackBar',
        colorText: Colors.white, backgroundColor: Colors.green);
  }

  void GetDialog() {
    Get.defaultDialog(
      title: 'GetX Dialog',
      middleText: 'Ini Dialog',
    );
  }

  void GetBottomSheet() {
    Get.bottomSheet(
      Container(
        height: 200,
        width: double.infinity,
        color: Colors.green,
        child: Center(
          child: Text('Ini adalah Dialof BottomSheet'),
          
        ),
      ),
    );
  }
}
