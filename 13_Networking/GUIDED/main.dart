import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pertemuan_13/view%20model/counter_controller.dart';
import 'package:pertemuan_13/view/detail_page.dart';
import 'package:pertemuan_13/view/my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
MyApp({super.key});
final controller = Get.put(CounterController());

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => MyHomePage(title: 'Belajar GetX')),
        GetPage(name: '/detail', page: () => DetailPage())
      ],
      
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Tugasku',),
    );
  }
}

