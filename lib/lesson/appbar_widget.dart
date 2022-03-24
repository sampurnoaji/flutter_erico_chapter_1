import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Lesson.AppBar_Widget.name),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more)),
          IconButton(onPressed: () {}, icon: Icon(Icons.message)),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff0096ff), Color(0xff6610f2)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight),
          ),
        ),
      ),
    );
  }
}