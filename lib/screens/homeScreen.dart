import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app1/controller/counterControl.dart';
import 'package:getx_app1/screens/secondScreen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // Dependency Injection
  final controller = Get.put(CounterController());  // Rather CounterController controller = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Demo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(
              () => Text(
                "${controller.count}",
                style: const TextStyle(
                  fontSize: 47,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: controller.decrement,
                  child: const Text('decrement'),
                ),
                ElevatedButton(
                  onPressed: controller.increment,
                  child: const Text('Increment'),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => Get.showSnackbar(
                    const GetSnackBar(
                      title: 'GetX SanckBar',
                      message: 'This is the GetX SanckBar demo',
                      duration: Duration(seconds: 2),
                      margin: EdgeInsets.all(20),
                      borderRadius: 20,
                      backgroundColor: Colors.deepPurple,
                      barBlur: 5,
                    ),
                  ),
                  child: const Text("Show SnackBar"),
                ),
                ElevatedButton(
                  onPressed: () => Get.defaultDialog(
                    title: 'GetX Alert',
                    middleText: 'This is the GetX AlertDialog demo',
                    textCancel: 'Cancel',
                    contentPadding: const EdgeInsets.all(22),
                  ),
                  child: const Text("Show AlertDialog"),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: () => {Get.to(() => const SecondScreen())},
              label: const Text("Second Screen"),
              icon: const Icon(Icons.navigate_next),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.reset,
        child: const Icon(Icons.restore_outlined),
      ),
    );
  }
}
