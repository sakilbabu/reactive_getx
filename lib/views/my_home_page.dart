import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  RxInt count = RxInt(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STREAM BUILDER"),
      ),
      body: Center(
        child: Obx(() {
          return Text(count.value.toString());
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          print(count);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
