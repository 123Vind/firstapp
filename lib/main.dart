import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TestingWidget(),
    );
  }
}

class TestingWidget extends StatefulWidget {
  const TestingWidget({Key? key}) : super(key: key);

  @override
  State<TestingWidget> createState() => _TestingWidgetState();
}

class _TestingWidgetState extends State<TestingWidget> {
  int t = 0;
  var d = Colors.amber;
  bool b = false;
  void changecolor() {
    setState(() {
      if (b == false) {
        b = true;
        d = Colors.amber;
      } else {
        b = false;
        d = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: d,
                    child: const Center(
                      child: Text(
                        "Hello",
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: changecolor,
                    child: const Text('CLICK ME'),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
