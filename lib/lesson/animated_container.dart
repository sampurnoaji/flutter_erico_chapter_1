import 'dart:math';

import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Lesson.Animated_Container.name),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              color: Color.fromARGB(
                255,
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
              ),
              width: 50.0 + random.nextInt(101),
              height: 50.0 + random.nextInt(101),
            ),
          ),
        ));
  }
}
