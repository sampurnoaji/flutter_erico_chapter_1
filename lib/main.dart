import 'package:erico_intro/lesson.dart';
import 'package:erico_intro/lesson/animated_container.dart';
import 'package:erico_intro/lesson/column_widget.dart';
import 'package:erico_intro/lesson/container_widget.dart';
import 'package:erico_intro/lesson/row_widget.dart';
import 'package:erico_intro/lesson/stateful_widget_page.dart';
import 'package:erico_intro/lesson/text_widget.dart';
import 'package:flutter/material.dart';

import 'lesson/anonymous_method_page.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Fundamental 1'),
          ),
          body: ListView(
            children: [
              for (final lesson in Lesson.values)
                Builder(
                  builder: (context) => InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        switch (lesson) {
                          case Lesson.Text_Widget:
                            return TextWidget();
                          case Lesson.Row_Widget:
                            return RowWidget();
                          case Lesson.Column_Widget:
                            return ColumnWidget();
                          case Lesson.Container_Widget:
                            return ContainerWidget();
                          case Lesson.Stateful_Widget:
                            return StatefulWidgetPage();
                          case Lesson.Anonymous_Method:
                            return AnonymousMethodPage();
                          case Lesson.Animated_Container:
                            return AnimatedContainerPage();
                        }
                      }));
                    },
                    child: Container(
                      color: Colors.amber,
                      margin: EdgeInsets.only(bottom: 2),
                      padding: EdgeInsets.all(16),
                      child: Text(lesson.name.toString()),
                    ),
                  ),
                )
            ],
          )),
    );
  }
}
