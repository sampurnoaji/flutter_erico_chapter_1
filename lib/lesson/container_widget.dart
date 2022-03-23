import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Lesson.Container_Widget.name),
      ),
      body: Container(
        color: Colors.redAccent,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.fromLTRB(10, 15, 20, 25),
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.amber, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20)),
        ),
      )
    );
  }
}