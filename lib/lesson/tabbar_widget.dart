import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
        color: Colors.lightGreen,
        border: Border(bottom: BorderSide(color: Colors.red))
      ),
      tabs: [
        Tab(icon: Icon(Icons.comment), text: 'Comments'),
        Tab(child: Image(image: AssetImage('images/dev.png'))),
        Tab(icon: Icon(Icons.home)),
        Tab(icon: Text('Hiiu')),
      ],
    );

    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              title: Text(Lesson.TabBar_Widget.name),
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                  child: Container(color: Colors.amber, child: myTabBar))),
          body: TabBarView(children: [
            Center(child: Text('Tab 1')),
            Center(child: Text('Tab 2')),
            Center(child: Text('Tab 3')),
            Center(child: Text('Tab 4')),
          ]),
        ));
  }
}
