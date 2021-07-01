import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

main() {
  runApp(Container(
    child: Center(
        child: Text(
      'Tutorial',
      textDirection: TextDirection.ltr,
      style: TextStyle(color: Colors.green, fontSize: 18.0),
    )),
  ));
}
