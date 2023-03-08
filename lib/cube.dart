import 'dart:math';

import 'package:flutter/material.dart';

class Cube extends StatelessWidget {
  const Cube({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //side 1
        Transform(
          transform: Matrix4.identity()
            ..translate(0.0, 0.0, -100.0),
          alignment: Alignment.center,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.pink
            ),
            child: Center(
              child: Text('side 1'),
            ),
          ),
        ),
        //side 2
        Transform(
          transform: Matrix4.identity()
          ..translate(100.0, 0.0, 0.0)
          ..rotateY(-pi / 2),
          alignment: Alignment.center,
          child: Container(
            height:200,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.white
            ),
            child:Center(
              child: Text('side 2'),
            ),
          ),
        ),
        //side 3
        Transform(
          transform: Matrix4.identity()
            ..translate(0.0, 100.0, 0.0)
            ..rotateX(pi / 2),
          alignment: Alignment.center,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.purple
            ),
            child: Center(child: Text('side 3')),
          ),
        ),
        //side 4
        Transform(
          transform: Matrix4.identity()
            ..translate(0.0, 0.0, 100.0),
          alignment: Alignment.center,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.blue
            ),
            child: Center(child: Text('side 4')),
          ),
        ),
        //side 5
        Transform(
          transform: Matrix4.identity()
            ..translate(-100.0, 00.0, 0.0)
          ..rotateY(pi/2),
          alignment: Alignment.center,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.blueGrey
            ),
            child: Center(child: Text('side 5')),
          ),
        ),
        //side 6
        Transform(
          transform: Matrix4.identity()
            ..translate(0.0, -100.0, 0.0)
          ..rotateX(pi/2),
          alignment: Alignment.center,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.orange
            ),
            child: Center(child: Text('side 6')),
          ),
        ),
      ],
    );
  }
}
