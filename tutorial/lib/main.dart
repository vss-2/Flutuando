import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

main() {
  runApp(AppWidget(title: 'Tutorial'));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  // Também funciona com State<HomePage> createState() {
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;


  Widget build(BuildContext context){
    return Container(
        child: Center(
          child: GestureDetector(
            child: Text(
              "Contando: $counter",
            ),
            onTap:(){
              setState((){
                counter++;
              });
            }
          )
        ),
      );
  }
}
