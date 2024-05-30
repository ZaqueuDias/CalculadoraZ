
import 'package:flutter/material.dart';

import '../componentes/display.dart';
import '../componentes/teclado.dart';

class Calculadora extends StatefulWidget {
  Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {

  void informa(){
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Calculadora',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(children: [Display(funcaoD: informa,), Teclado(funcaoT: informa,)],),
      ),
    );
  }
}
