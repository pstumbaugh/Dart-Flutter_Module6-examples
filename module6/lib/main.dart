import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Adaptive Layouts',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(title: Text('Adaptive Layouts')),
            body: Center(child: Text('Builder Demo')),
            floatingActionButton: Builder(
              builder: (context) {
                return FloatingActionButton(onPressed: () {
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('SNAAAAACKS!')));
                });
              },
            )));
  }
}
