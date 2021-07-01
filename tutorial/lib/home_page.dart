import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  Widget build(BuildContext context){
    return Scaffold(
        body: Center(
          child: GestureDetector(
            child: Text(
              "Contando: $counter",
            ),
          )
        ),
        appBar: 
          AppBar(
            title: Text('Home Page')
          ),
        floatingActionButton:  
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState((){
                counter++;
              });
            }
          ),
      );
  }
}
