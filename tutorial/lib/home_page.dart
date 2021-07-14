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
            // Ambos os eixos no centro
            mainAxisAlignment: MainAxisAlignment.center,
            // Espaço entre itens é igual (começa 0 e vai até o outro máximo da tela)
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // Espaço se afastando igualmente das extremidades esquerda e direita
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Contador: $counter'),
              Container(height: 50),
              CustomSwitch(),
              Container(height: 50),
              Row(
                // Espaço entre itens (espaço ao redor do item, estilo margem), é muito usado
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.green
                  )
                ],
              )
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
