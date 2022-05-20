import 'dart:math';
import 'package:flutter/material.dart';

main() {
  runApp(PaginaInicial());
}

class PaginaInicial extends StatefulWidget {
  @override
  Sorteador createState() {
    return Sorteador();
  }
}

class Sorteador extends State<PaginaInicial> {
  var numero = 0;

  void sortear() {
    setState(() {
      numero = 1 + Random().nextInt(101 - 1);
    });
  }
  
   void resetar() {
    setState(() {
      numero = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(backgroundColor: Colors.purple[800],
          title: const Text('Sorteador', style: TextStyle(fontWeight: FontWeight.bold))),
          body: Center(
            child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text('Numero sorteado:', style: TextStyle(fontSize: 24),
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 30, bottom: 50),
            child:  Visibility(
                visible: numero != 0,
                replacement: const Text('Aperte o botão para sortear', style: TextStyle(fontSize: 20 ),),
                child: Text(
                  '$numero',
                  style: const TextStyle(color: Colors.red, fontSize: 30),
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.only(bottom: 10),
                child: OutlinedButton(
                 style: OutlinedButton.styleFrom(backgroundColor: Colors.purple[800]),
                  onPressed: () {
                    sortear();
                  },
                  child: const Text('Sortear', style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                   ),
              ),
              OutlinedButton(
                 style: OutlinedButton.styleFrom(backgroundColor: Colors.white70),
                  onPressed: () {
                    resetar();
                  },
                  child: const Text('Resetar', style: TextStyle(fontSize: 22, color: Colors.purple),
                ),
              ),
            ],
          ),
        ),  
      ),
    );
  }
}
