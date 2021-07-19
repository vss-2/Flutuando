import 'package:flutter/material.dart';
import 'package:tutorial/app_controller.dart';
import 'package:tutorial/login_page.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {

  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child){
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
            brightness: AppController.instance.isDarkTheme? 
              Brightness.dark : Brightness.light
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
          }
        );
      }
    );
  }
}
