import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void showAlertDialog() {
    showDialog(
      barrierColor: Colors.white.withOpacity(0.1),
      context: context,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child: AlertDialog(
            title: Text("this is the dialog"),
            content:
                Text("In this tutorial we'll take a look at backdropfilter"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("OK"))
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blur Test - BackdropFilter"),
      ),
      body: SafeArea(
        child: Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAlertDialog();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
