import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Lesson.Container_Widget.name),
        ),
        body: MainPage());
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MediaQuery.of(context).orientation == Orientation.portrait)
        ? Column(
            children: generateContainers(),
          )
        : Row(
            children: generateContainers(),
          );
  }

  List<Widget> generateContainers() {
    return [
      Container(
        color: Colors.green,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.yellow,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
    ];
  }
}
