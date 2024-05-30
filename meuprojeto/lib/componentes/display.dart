import 'package:flutter/material.dart';

import '../models/regra.dart';

class Display extends StatefulWidget {
  Function() funcaoD;
  Display({super.key, required this.funcaoD});

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.bottomEnd,
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Column(
        children: [
          Container(
            alignment: AlignmentDirectional.bottomEnd,
            width: MediaQuery.of(context).size.width,
            height: 154,
            child: Wrap(
              children: Regra.display,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 45,
            child: Padding(
              padding: EdgeInsets.fromLTRB(33, 0, 0, 0),
              child: GestureDetector(
                onTap: (){Regra().digito('%');widget.funcaoD();},
                child: Text(
                  '%',
                  style: TextStyle(fontSize: 35, color: Colors.blue),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
