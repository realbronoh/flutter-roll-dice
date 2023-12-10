import 'package:flutter/material.dart';

void main() {
  runApp(
    // "const" will optimize runtime performance by store the Widget in memory
    // blue line of vscode suggests to use const
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    ),
  );
}
