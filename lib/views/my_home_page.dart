import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_getx/controllers/my_home_page_controller.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MyHomePageController());
    return controller.obx(
      (state) => Scaffold(
        appBar: AppBar(
          title: Text("STREAM BUILDER"),
        ),
        body: Center(child: Text(state.toString())),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            state = state! + 1;
            print(state);
            // controller.change(state, status: RxStatus.error("i m error"));
            controller.change(state, status: RxStatus.loading());
          },
          child: Icon(Icons.add),
        ),
      ),
      onLoading: Scaffold(body: Center(child: Text("Loading............"))),
      onEmpty: Center(child: Text("Loading............")),
      onError: (error) => Scaffold(body: Center(child: Text(error!))),
    );
  }
}
