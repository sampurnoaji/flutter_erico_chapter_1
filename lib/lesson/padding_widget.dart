import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';

class AnimatedPaddingPage extends StatefulWidget {
  const AnimatedPaddingPage({Key? key}) : super(key: key);

  @override
  _AnimatedPaddingPageState createState() => _AnimatedPaddingPageState();
}

class _AnimatedPaddingPageState extends State<AnimatedPaddingPage> {

  double myPadding = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Lesson.Padding.name),
      ),
      body: Column(
        children: [
          Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: Duration(seconds: 1),
                        padding: EdgeInsets.all(myPadding),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              myPadding = 20;
                            });
                          },
                          child: Container(
                            color: Colors.red,
                          ),
                        ),
                      )),
                  Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: Duration(seconds: 1),
                        padding: EdgeInsets.all(myPadding),
                        child: Container(
                          color: Colors.green,
                        ),
                      )),
                ],
              )),
          Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: Duration(seconds: 1),
                        padding: EdgeInsets.all(myPadding),
                        child: Container(
                          color: Colors.blue,
                        ),
                      )),
                  Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: Duration(seconds: 1),
                        padding: EdgeInsets.all(myPadding),
                        child: Container(
                          color: Colors.yellow,
                        ),
                      )),
                ],
              ))
        ],
      ),
    );
  }
}
