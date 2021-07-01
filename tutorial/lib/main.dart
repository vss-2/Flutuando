import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

main() {
  runApp(AppWidget(title: 'Tutorial'));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          title,
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.green, fontSize: 18.0),
        )
      ),
    );
  }
}
