import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(top: 70),
                height: 100,
                color: Colors.white,

                child: Center(child: Text('data')),
              ),
              SizedBox(height: 30),
              Container(
                height: 100,
                color: Colors.red,
                child: Center(child: Text('data')),
              ),
              Container(
                height: 100,
                color: Colors.blue,
                child: Center(child: Text('data')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
