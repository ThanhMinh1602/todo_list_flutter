import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  bool isField1Focused = false;
  bool isField2Focused = false;

  void handleField1Tap() {
    setState(() {
      isField1Focused = true;
      isField2Focused = false;
    });
  }

  void handleField2Tap() {
    setState(() {
      isField2Focused = true;
      isField1Focused = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Two Focused TextFields'),
      ),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: handleField1Tap,
              child: Container(
                decoration: BoxDecoration(
                  border: isField1Focused
                      ? Border.all(color: Colors.blue, width: 2.0)
                      : Border.all(color: Colors.grey, width: 1.0),
                ),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Field 1'),
                ),
              ),
            ),
            GestureDetector(
              onTap: handleField2Tap,
              child: Container(
                decoration: BoxDecoration(
                  border: isField2Focused
                      ? Border.all(color: Colors.blue, width: 2.0)
                      : Border.all(color: Colors.grey, width: 1.0),
                ),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Field 2'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
