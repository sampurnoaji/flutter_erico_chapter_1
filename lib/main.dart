import 'package:erico_intro/lesson.dart';
import 'package:erico_intro/lesson/animated_container.dart';
import 'package:erico_intro/lesson/appbar_widget.dart';
import 'package:erico_intro/lesson/card_widget.dart';
import 'package:erico_intro/lesson/column_widget.dart';
import 'package:erico_intro/lesson/container_widget.dart';
import 'package:erico_intro/lesson/draggable.dart';
import 'package:erico_intro/lesson/flexible_widget.dart';
import 'package:erico_intro/lesson/hero_cliprrect_widget.dart';
import 'package:erico_intro/lesson/image_widget.dart';
import 'package:erico_intro/lesson/inkwell_widget.dart';
import 'package:erico_intro/lesson/login_page.dart';
import 'package:erico_intro/lesson/media_query_page.dart';
import 'package:erico_intro/lesson/row_widget.dart';
import 'package:erico_intro/lesson/spacer_widget.dart';
import 'package:erico_intro/lesson/stack_align_widget.dart';
import 'package:erico_intro/lesson/stateful_widget_page.dart';
import 'package:erico_intro/lesson/tabbar_widget.dart';
import 'package:erico_intro/lesson/text_widget.dart';
import 'package:erico_intro/lesson/textfield_widget.dart';
import 'package:flutter/material.dart';

import 'lesson/anonymous_method_page.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                          case Lesson.Flexible_Widget:
                            return FlexibleWidget();
                          case Lesson.Stack_Align_Widget:
                            return StackAlignWidget();
                          case Lesson.Image_Widget:
                            return ImageWidget();
                          case Lesson.Spacer_Widget:
                            return SpacerWidget();
                          case Lesson.Draggable:
                            return DraggablePage();
                          case Lesson.AppBar_Widget:
                            return AppBarWidget();
                          case Lesson.Card_Widget:
                            return CardWidget();
                          case Lesson.TextField_Widget:
                            return TextFieldWidget();
                          case Lesson.MediaQuery:
                            return MediaQueryPage();
                          case Lesson.InkWell_Widget:
                            return InkWellWidget();
                          case Lesson.Login_Page:
                            return LoginPage();
                          case Lesson.Hero_ClipRRect_Widget:
                            return HeroClipRRectWidget();
                          case Lesson.TabBar_Widget:
                            return TabBarWidget();
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
