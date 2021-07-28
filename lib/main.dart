import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
  var count = 0.obs;

  void Increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('GetApp')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    'Count is $count',
                  )),
              RaisedButton(
                child: Text('Incrment'),
                onPressed: () {
                  Increment();
                },
              )
            ],
          ),
        ));
  }
}
