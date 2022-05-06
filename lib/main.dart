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
  String counter = "";
  void changecounter() {
    setState(() {
      if (t == 30) {
        t = 0;
      }
      t++;
      counter = t.toString();
    });
  }

  void change2() {
    setState(() {
      counter = "Long press";
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
                  Text(
                    '$counter',
                    style: TextStyle(fontSize: 40),
                  ),
                  ElevatedButton(
                    onPressed: changecounter,
                    child: const Text('CLICK ME'),
                    onLongPress: change2,
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
