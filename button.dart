import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Button Example',
      home: Scaffold(
        appBar: AppBar(title: Text('My Button Example')),
        body: Center(
          child: MyButton(),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: Color(0xFFFFFFFF)),
          left: BorderSide(width: 1.0, color: Color(0xFFFFFFFF)),
          right: BorderSide(width: 1.0, color: Color(0xFF000000)),
          bottom: BorderSide(width: 1.0, color: Color(0xFF000000)),
        ),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
          backgroundColor: const Color.fromARGB(255, 116, 230, 9),
          side: const BorderSide(
              color: Color.fromARGB(255, 6, 251, 10), width: 1.0),
        ),
        onPressed: () {
          // Add your onPressed functionality here
          print('Button pressed!');
        },
        child: const Text(
          'OK',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color.fromARGB(255, 236, 6, 6)),
        ),
      ),
    );
  }
}
