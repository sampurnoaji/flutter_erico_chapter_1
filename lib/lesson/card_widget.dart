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
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.amber, Colors.blue],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          padding: EdgeInsets.all(16),
          child: ListView(
            children: [
              buildCard(Icons.ac_unit, 'Pendingin'),
              buildCard(Icons.android, 'Android'),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Card(
                    elevation: 10,
                    child: Stack(
                      children: [
                        Opacity(
                          opacity: 0.7,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(4),
                                  topLeft: Radius.circular(4)),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://cdn.pixabay.com/photo/2018/01/20/08/33/sunset-3094078_960_720.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              20,
                              50 + MediaQuery.of(context).size.height * 0.35,
                              20,
                              20),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  'Beautiful sunset at Paddy Beach',
                                  style: TextStyle(
                                      color: Colors.orange, fontSize: 25),
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Posted on'),
                                    SizedBox(width: 4),
                                    Text('Jun 29 2001',
                                        style: TextStyle(color: Colors.orange)),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Spacer(flex: 5),
                                    Icon(Icons.thumb_up),
                                    Spacer(flex: 1),
                                    Text('100'),
                                    Spacer(flex: 3),
                                    Icon(Icons.message),
                                    Spacer(flex: 1),
                                    Text('328'),
                                    Spacer(flex: 5),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
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
