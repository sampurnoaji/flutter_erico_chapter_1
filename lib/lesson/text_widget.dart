import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Lesson.Text_Widget.name),
      ),
      body: Center(
        child: Text(
          'saya sedang melatih kemampuan flutter saya saya sedang melatih kemampuan flutter saya saya sedang melatih kemampuan flutter saya',
          maxLines: 2,
          textAlign: TextAlign.justify,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline,
            decorationColor: Colors.red,
            decorationThickness: 2,
            decorationStyle: TextDecorationStyle.wavy
          ),
        ),
      ),
    );
  }
}
