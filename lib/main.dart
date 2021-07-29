import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'model.dart';

void main() {
  runApp(GetApp());
}

class GetApp extends StatelessWidget {
  const GetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetApp",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final student = Student();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('GetApp')),
        body: Column(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Obx(() {
                    return Text(
                      'Name is ${student.name.value} and Age is ${student.age.value}',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    );
                  }),
                  ElevatedButton(
                    child: Text('Upper'),
                    onPressed: () {
                      student.name.value = student.name.value.toUpperCase();
                    },
                  ),
                  ElevatedButton(
                    child: Text('Lower'),
                    onPressed: () {
                      student.name.value = student.name.value.toLowerCase();
                    },
                  ),
                  ElevatedButton(
                      child: Text('Age increment'),
                      onPressed: () {
                        student.age.value++;
                      }),
                  ElevatedButton(
                      child: Text('Age decrement'),
                      onPressed: () {
                        student.age.value--;
                      }),
                ],
              ),
            ),
          ],
        ));
  }
}
