// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class WidgetLoadin extends StatefulWidget {
  const WidgetLoadin({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _WidgetLoadinState createState() => _WidgetLoadinState();
}

class _WidgetLoadinState extends State<WidgetLoadin> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        CircularProgressIndicator(),
      ]),
    ]);
  }
}
