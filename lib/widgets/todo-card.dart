// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

class Todocard extends StatelessWidget {
  const Todocard({super.key,required this.vartitle,required this.doneOrnot});

final String vartitle;
final bool doneOrnot;


  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(58, 66, 86, 0.2),
            borderRadius: BorderRadius.circular(12)),
        padding: EdgeInsets.all(22),
        margin: EdgeInsets.only(top: 33),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              vartitle,
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
              Icon(doneOrnot?  Icons.check:Icons.close,
            
              size: 27,
              color:doneOrnot? Colors.green[400]:Colors.red,
            )
            
          ],
        ),
      ),
    );
  }
}
