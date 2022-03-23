import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';

class StackAlignWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Lesson.Stack_Align_Widget.name),
        ),
        body: Stack(
          children: [
            //background
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(flex: 1, child: Container(color: Colors.green)),
                      Flexible(flex: 1, child: Container(color: Colors.orange))
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(flex: 1, child: Container(color: Colors.orange)),
                      Flexible(flex: 1, child: Container(color: Colors.green))
                    ],
                  ),
                ),
              ],
            ),

            //listview
            ListView(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Ini adalah text yang ada di lapisan tengah dari Stack',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Ini adalah text yang ada di lapisan tengah dari Stack',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Ini adalah text yang ada di lapisan tengah dari Stack',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Ini adalah text yang ada di lapisan tengah dari Stack',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Ini adalah text yang ada di lapisan tengah dari Stack',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Ini adalah text yang ada di lapisan tengah dari Stack',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Ini adalah text yang ada di lapisan tengah dari Stack',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Ini adalah text yang ada di lapisan tengah dari Stack',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Ini adalah text yang ada di lapisan tengah dari Stack',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Ini adalah text yang ada di lapisan tengah dari Stack',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Ini adalah text yang ada di lapisan tengah dari Stack',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Ini adalah text yang ada di lapisan tengah dari Stack',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),

            //button
            Align(
                alignment: Alignment(-0.3, 0.7),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('My Button'),
                )),
          ],
        ));
  }
}
