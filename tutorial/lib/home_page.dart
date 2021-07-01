import 'package:flutter/material.dart';
import 'package:tutorial/app_controller.dart';


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
          child: Switch(
            value: AppController.instance.isDarkTheme,
            onChanged: (value){
              AppController.instance.changeTheme();
            },
          ),
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
