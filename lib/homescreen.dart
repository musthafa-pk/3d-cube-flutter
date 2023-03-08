import 'dart:math';

import 'package:flutter/material.dart';
import 'package:testing3d/cube.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Offset _offset = Offset.zero;
  TextEditingController length = TextEditingController();
  TextEditingController width = TextEditingController();
  var len;
  var wid;
  double? size1;
  double? size2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Transform(
        transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateX(_offset.dy * pi / 180)
        ..rotateY(_offset.dx * pi / 180),
        alignment: Alignment.center,
        child: GestureDetector(
          onPanUpdate: (details) {
            setState(() {
              _offset += details.delta;
            });
          },
          child: Center(
            child: Column(
              children: [
                Cube(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
