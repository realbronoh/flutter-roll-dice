import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Text('Hello World!')));
  // "const" will optimize runtime performance by store the Widget in memory
  // blue line of vscode suggests to use const
}
