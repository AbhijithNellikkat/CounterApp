import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app1/screens/homeScreen.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );
}
