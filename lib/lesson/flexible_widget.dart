import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Lesson.Flexible_Widget.name),
        ),
        body: Column(
          children: [
            Flexible(
                flex: 1,
                child: Container(
                  color: Colors.green,
                )),
            Flexible(
                flex: 2,
                child: Row(
                  children: [
                    Flexible(flex: 1, child: Container(color: Colors.grey)),
                    Flexible(flex: 1, child: Container(color: Colors.limeAccent)),
                    Flexible(flex: 2, child: Container(color: Colors.black))
                  ],
                )),
            Flexible(
                flex: 1,
                child: Container(
                  color: Colors.purple,
                )),
          ],
        ));
  }
}
