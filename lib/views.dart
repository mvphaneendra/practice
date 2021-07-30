import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_reactive/controller.dart';

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
  final preethiController = Get.put(PreethiController());

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
                      'Name is ${preethiController.student.name} and Age is ${preethiController.student.age}',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    );
                  }),
                  ElevatedButton(
                    child: Text('Upper'),
                    onPressed: () {
                      preethiController.toUpper();
                    },
                  ),
                  ElevatedButton(
                    child: Text('Lower'),
                    onPressed: () {
                      preethiController.toLower();
                    },
                  ),
                  ElevatedButton(
                      child: Text('Age increment'),
                      onPressed: () {
                        preethiController.incrementByOne();
                      }),
                  ElevatedButton(
                      child: Text('Age decrement'),
                      onPressed: () {
                        preethiController.decrementByOne();
                      }),
                ],
              ),
            ),
          ],
        ));
  }
}
