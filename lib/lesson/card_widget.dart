import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Lesson.Card_Widget.name),
        ),
        body: Container(
          color: Colors.redAccent,
          padding: EdgeInsets.all(16),
          child: ListView(
            children: [
              buildCard(Icons.ac_unit, 'Pendingin'),
              buildCard(Icons.android, 'Android'),
              buildCard(Icons.image, 'Image'),
            ],
          ),
        ));
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 4,
      child: Container(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Icon(iconData, color: Colors.green),
            SizedBox(width: 8),
            Text(text)
          ],
        ),
      ),
    );
  }
}
