import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_getx/controllers/my_home_page_controller.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetX<MyHomePageController>(
        init: Get.put(MyHomePageController()),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: Text("STREAM BUILDER"),
            ),
            body: Center(child: Text(controller.count.value.toString())),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                controller.count.value++;
                print(controller.count);
              },
              child: Icon(Icons.add),
            ),
          );
        });
  }
}
