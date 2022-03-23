import 'package:flutter/material.dart';

import 'lesson/anonymous_method_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Aplikasi Hello World'),
          ),
          body: Container(
            color: Colors.redAccent,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.fromLTRB(10, 15, 20, 25),
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.amber, Colors.blue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'teks 1',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'saya sedang melatih kemampuan flutter saya saya sedang melatih kemampuan flutter saya saya sedang melatih kemampuan flutter saya',
                    maxLines: 2,
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text('teks 3'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('teks 4'),
                      Text('teks 5'),
                      Text('teks 6'),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
