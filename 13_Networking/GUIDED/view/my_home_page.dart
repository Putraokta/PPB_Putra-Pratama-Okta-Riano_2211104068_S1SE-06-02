import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pertemuan_13/view%20model/counter_controller.dart';
import 'package:pertemuan_13/view/detail_page.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                controller.counter.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => DetailPage());
                },
                child: const Text('Go to Detail'),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: controller.incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: controller.decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              controller.GetSnackBar();
            },
            tooltip: 'Snackbar',
            child: const Icon(Icons.chat),
          ),
          FloatingActionButton(
            onPressed: controller.GetDialog,
            tooltip: 'Dialog',
            child: const Icon(Icons.notifications_active),
          ),
          FloatingActionButton(
            onPressed: controller.GetBottomSheet,
            tooltip: 'BottomSheet',
            child: const Icon(Icons.arrow_upward),
          ),
        ],
      ),
    );
  }
}
