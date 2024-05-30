import 'package:flutter/material.dart';

import '../models/regra.dart';

dynamic pressionar(dynamic receber){
  if(receber == 'Rq/p'){
    return 'sqrt(';
  }else if(receber == '('){
    return ')';
  }
  else{
    return receber;
  }
}


class Botao extends StatefulWidget {
  dynamic vaiser;
  Color cor;
  Function() funcaoB;

  Botao({super.key, required this.vaiser, this.cor = Colors
      .white, required this.funcaoB});

  @override
  State<Botao> createState() => _BotaoState();
}

class _BotaoState extends State<Botao> {

  @override
  Widget build(BuildContext context) {
    if(widget.vaiser.runtimeType == String){
      widget.vaiser = Text('${widget.vaiser}', style: TextStyle(fontSize: 25),);
    }
    return Container(
        width: 90,
        height: 85,
        child: ElevatedButton(
            onLongPress: (){widget.vaiser = pressionar(widget.vaiser.data); Regra().digito(widget.vaiser.runtimeType == Text? widget.vaiser.data: widget.vaiser);widget.funcaoB();},
            onPressed: (){Regra().digito(widget.vaiser.runtimeType == Text? widget.vaiser.data: widget.vaiser); widget.funcaoB();},
            child: widget.vaiser,
            style: ElevatedButton.styleFrom(
                backgroundColor: widget.cor,
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.zero))));
  }
}
