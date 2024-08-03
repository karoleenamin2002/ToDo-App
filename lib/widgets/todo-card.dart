// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Todocard extends StatefulWidget {
  const Todocard({super.key});

  @override
  State<Todocard> createState() => _TodocardState();
}

class _TodocardState extends State<Todocard> {
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
              "sdfghjkl;",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            Icon(
              Icons.close,
              size: 27,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
