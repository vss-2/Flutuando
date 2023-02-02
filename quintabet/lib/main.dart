import 'dart:math';
import 'dart:typed_data';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'ffi.dart' if (dart.library.html) 'ffi_web.dart';
import 'global_vars.dart' as globals;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch:Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

const vd = VerticalDivider(
  width: 20,
  thickness: 1,
  indent: 20,
  endIndent: 0,
  color: Colors.grey,
);

class GamePage extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Real Madrid x Valência'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.home_outlined),
        ),
      ),
    );
  }
  
  @override
  _GameState createState() => _GameState();
}

// Snippet source: https://www.fluttercampus.com/guide/334/add-accordion-flutter/
class _GameState extends State<GamePage> { 

  List<bool> expanded = [false, false];
  Color c1 = Color.fromARGB(255, 0, 0, 0);
  @override
  Widget build(BuildContext context) { 
    return  Scaffold(
          appBar: AppBar(
            title: Text("Real Madrid x Valência"),
            backgroundColor: Colors.green,
          ),
          body: Container(
             child: Column(
                children: [
                  ExpansionTile(
                    title: const Text("Resultado final"),
                    children: [
                          Container( 
                              color: Colors.black12,
                              padding:EdgeInsets.all(20),
                              width: double.infinity,
                              child: Container(child: Column(children:[
                                Row(children: [TextButton(style:ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.black87)), onPressed: ()=>{}, child: Text("Real Madrid 1.33"))]),
                                Divider(),
                                Row(children: [TextButton(style:ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.black87)), onPressed: ()=>{}, child: Text("Empate 5.25") )]),
                                Divider(),
                                Row(children: [TextButton(style:ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.black87)), onPressed: ()=>{}, child: Text("Valência 8.50"))]),
                              ]
                              )
                              )
                          )
                    ],
                  ),
                  ExpansionTile(
                    title: const Text("Handicap Asiático"),
                    children: [
                          Container( 
                              color: Colors.black12,
                              padding:EdgeInsets.all(20),
                              width: double.infinity,
                              child: Container(child: Column(children:[
                                Row(children: [TextButton(style:ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.black87)), onPressed: ()=>{}, child: Text("Real Madrid -1.5  2.1"))]),
                                Divider(),
                                Row(children: [TextButton(style:ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.black87)), onPressed: ()=>{}, child: Text("Valência +2.5  1.4"))]),
                              ]
                              )
                              )
                          )
                    ],
                  ),
                  Divider(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.home_outlined),
                  ),
                ],
             ),
          )
       );
  }
}

final Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Real Madrid x Valência',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Today 17:00 (-3GMT)',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 50,
        child: Row(
          children: [
            Column(
              children: 
              [
                const Text("1"),
                OtherClass(oddValue: '1.33',),
              ]
            ),
            const VerticalDivider(),
            Column(
              children: 
              [
                const Text("X"),
                OtherClass(oddValue: '5.25',),
              ]
            ),
            const VerticalDivider(),
            Column(
              children: 
              [
                const Text("2"),
                OtherClass(oddValue: '8.50',),
              ]
            ),
          ]
        ,)
      )
    ],
  ),
);


// Snippet source:
// https://stackoverflow.com/questions/29182581/global-variables-in-dart
class OtherClass extends StatefulWidget {
  final String oddValue;
  OtherClass({Key? key, required this.oddValue}) : super(key: key);

  @override
  _OtherClassState createState() => _OtherClassState();
}

class _OtherClassState extends State<OtherClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: TextButton(
        child: widget.oddValue == '0'? 
          Text(globals.bets.toString()) : Text(widget.oddValue),
         onPressed: () {
            setState(() {globals.bets++;});
            print(globals.bets);
         },
       ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final String titleHome = "Quintabet ⚽️";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleHome),
      ),
      body: Column(
        children: [titleSection, 
        FloatingActionButton(
          onPressed: () =>
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GamePage()),
            ),
          child: 
          const Icon(
            Icons.attach_money
          ),
        )],
      ),
    );
  }
}
