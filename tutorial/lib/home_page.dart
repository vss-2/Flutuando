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
        body: Container(
          height: 200,
          width: 200,
          color: Colors.black,
          child: Center(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
            )
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
