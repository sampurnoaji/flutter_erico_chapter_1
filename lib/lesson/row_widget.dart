import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Lesson.Row_Widget.name),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('teks 4'),
          Text('teks 5'),
          Text('teks 6'),
        ],
      )
    );
  }
}