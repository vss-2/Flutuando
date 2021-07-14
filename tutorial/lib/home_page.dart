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
        body: Container(
          // Usa todo o espaço disponível na largura e altura
          width: double.infinity,
          height: double.infinity,
          child: Column(
            // Alinha ao meio da tela
            mainAxisAlignment: MainAxisAlignment.center,
            // Alinha à esquerda
            crossAxisAlignment: CrossAxisAlignment.start,
            // Alinha ao direita
            // crossAxisAlignment: CrossAxisAlignment.end,
            // Estica pra ambos os lados
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Contador: $counter'),
              CustomSwitch()
            ]
          )
        ),
        appBar: 
          AppBar(
            actions: [CustomSwitch()],
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

class CustomSwitch extends StatelessWidget {
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value){
        AppController.instance.changeTheme();
      },
    );
  }
}
