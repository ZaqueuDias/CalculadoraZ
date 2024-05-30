import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meuprojeto/componentes/botao.dart';

class Teclado extends StatefulWidget {
  Function() funcaoT;
  Teclado({super.key, required this.funcaoT});

  @override
  State<Teclado> createState() => _TecladoState();
}

class _TecladoState extends State<Teclado> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [Botao(vaiser: 'c', funcaoB: widget.funcaoT,), Botao(vaiser: '(', funcaoB: widget.funcaoT,), Botao(vaiser: Icon(FontAwesomeIcons.divide), funcaoB: widget.funcaoT,), Botao(vaiser: Icon(Icons.backspace_outlined,), cor: Colors.yellow, funcaoB: widget.funcaoT,)],),
        Row(children: [Botao(vaiser: '7', funcaoB: widget.funcaoT,), Botao(vaiser: '8', funcaoB: widget.funcaoT,), Botao(vaiser: '9',funcaoB: widget.funcaoT,), Botao(vaiser: 'x', cor: Colors.yellow,funcaoB: widget.funcaoT,)]),
        Row(children: [Botao(vaiser: '4',funcaoB: widget.funcaoT,), Botao(vaiser: '5',funcaoB: widget.funcaoT,), Botao(vaiser: '6',funcaoB: widget.funcaoT,), Botao(vaiser:'-', cor: Colors.yellow,funcaoB: widget.funcaoT,)]),
        Row(children: [Botao(vaiser: '1',funcaoB: widget.funcaoT,), Botao(vaiser: '2',funcaoB: widget.funcaoT,), Botao(vaiser: '3',funcaoB: widget.funcaoT,), Botao(vaiser: '+', cor: Colors.yellow,funcaoB: widget.funcaoT,)]),
        Row(children: [Botao(vaiser: '0',funcaoB: widget.funcaoT,), Botao(vaiser: 'Rq/p',funcaoB: widget.funcaoT,), Botao(vaiser: ',',funcaoB: widget.funcaoT,), Botao(vaiser: '=', cor: Colors.yellow,funcaoB: widget.funcaoT,)])],
    );
  }
}
