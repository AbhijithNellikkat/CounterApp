// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app1/controller/counterControl.dart';
import 'package:getx_app1/screens/homeScreen.dart';

class ThirdScreen extends StatelessWidget {
  ThirdScreen({super.key});
  final CounterController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Screen"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Counter vlaue from Home Screen"),
            const SizedBox(height: 30),
            Text(
              "${controller.count}",
              style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Get.offAll(() => HomeScreen()),
              child: const Text('Go to Home Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
