import 'package:flutter/material.dart';
import 'package:tutorial/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  
  @override
  Widget build(BuildContext context) {
    return Material(
      // Permite que a tela login se torne scrollável após aparição do teclado na tela mobile
      child: SingleChildScrollView(
        child: SizedBox(
          // Funcionalidade equivalente do double.infinity
          height: MediaQuery.of(context).size.width,
          width: MediaQuery.of(context).size.height,
          child: Padding(
            // Adiciona um espaçamento entre as colunas
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 182,
                  height: 182,
                  child: Image.asset(
                    'assets/images/favicon.png'
                  )
                ),
                Container(
                  height: 10,
                ),
                TextField(
                  onChanged: (text){
                    email = text;
                  },
                  // Informa ao teclado mobile para adaptar-se a um receber input em formato de email
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    // Adiciona borda com label personalizado e com animação
                    border: OutlineInputBorder(),
                    labelText: 'Email'
                  )
                ),
                SizedBox(height: 10),
                TextField(
                  // Censura senha transformando em pontinhos
                  obscureText: true,
                  onChanged: (text){
                    password = text;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password'
                  )
                ),
                SizedBox(height: 15),
                // Botão pressionável
                ElevatedButton(
                  onPressed: (){
                    if(email == 'teste@teste.com' && password == '123456'){
                      print('Login Correto');
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      print('Login Incorreto');
                    }
                  },
                  child: Text('Entrar'),
                )
              ],
            ),
          )
        ),
      )
    );
  }
}