import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';

class SpacerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Lesson.Spacer_Widget.name),
      ),
      body: Center(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Spacer(flex: 1,),
            Container(color: Colors.red, width: 80, height: 80,),
            Spacer(flex: 2,),
            Container(color: Colors.green, width: 80, height: 80,),
            Spacer(flex: 3,),
            Container(color: Colors.black, width: 80, height: 80,),
            Spacer(flex: 4,),
          ],
        ),
      )
    );
  }
}