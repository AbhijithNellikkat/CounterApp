// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app1/screens/thirdScreen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Back to Home Screen"),
            ),
            ElevatedButton.icon(
              onPressed: () => {Get.to(() => ThirdScreen())},
              label: const Text("Third Screen"),
              icon: const Icon(Icons.navigate_next),
            ),
          ],
        ),
      ),
    );
  }
}
