import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:math_expressions/math_expressions.dart';

class Regra{

  static String tela = '';
  static List<Widget> display = [];
  static String numeros = '0123456789+-xc,';

  digito(dynamic digitos){
    if(digitos.runtimeType == String){
      if(digitos == 'x'){
        tela += '*';
        display.add(Text('x',style: TextStyle(fontSize: 45),));
      }else if(digitos == '%'){
        tela += '/100 *';
        display.add(Text('%',style: TextStyle(fontSize: 45),));
      }
      else if(digitos == 'c'){
        tela = '';
        display = [];
      }else if(digitos == ',') {
        tela += '.';
        display.add(Text(',',style: TextStyle(fontSize: 45),));
      }else if(digitos == 'Rq/p'){
        tela += '^';
        display.add(Text('^', style: TextStyle(fontSize: 45),));
      }
      else if(digitos == '='){
        Parser p = Parser();
        Expression exp = p.parse(tela);
        ContextModel cm = ContextModel();
        double result = exp.evaluate(EvaluationType.REAL, cm);
        tela = result.toString();
        if(tela.split('.')[1] == '0'){
          tela = tela.split('.')[0];
          display = [Text(tela, style: TextStyle(fontSize: 45),)];
        }else{
          display = [Text(tela.split('.')[0]+','+tela.split('.')[1],style: TextStyle(fontSize:45 ),)];
        }
      }
      else{
        tela += digitos;
        display.add(Text('$digitos',style: TextStyle(fontSize: 45),));
      }
    }else if(digitos.runtimeType == Icon){
      if(digitos.icon == Icons.backspace_outlined){
        tela = tela.substring(0, tela.length -1);
        display.removeAt(display.length -1);
      }else if(digitos.icon == FontAwesomeIcons.divide){
        tela += '/';
        display.add(Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0), child: Icon(FontAwesomeIcons.divide),));
      }
    }
  }
}