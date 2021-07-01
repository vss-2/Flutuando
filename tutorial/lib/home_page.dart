import 'package:flutter/material.dart';

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
