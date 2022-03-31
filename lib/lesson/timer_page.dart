import 'dart:async';

import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  bool isBlack = true;
  int counter = 0;
  bool isStop = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Lesson.Timer.name),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                counter.toString(),
                style: TextStyle(color: (isBlack) ? Colors.black : Colors.red, fontSize: 24),
              ),
              SizedBox(height: 10),
              RaisedButton(
                onPressed: () {
                  Timer.run(() {
                    setState(() {
                      isBlack = !isBlack;
                    });
                  });
                },
                child: Text('Ubah warna langsung'),
              ),
              SizedBox(height: 10),
              RaisedButton(
                onPressed: () {
                  Timer(Duration(seconds: 2), () {
                    setState(() {
                      isBlack = !isBlack;
                    });
                  });
                },
                child: Text('Ubah warna 2 detik kemudian'),
              ),
              SizedBox(height: 10),
              RaisedButton(
                onPressed: () {
                  counter = 0;
                  isStop = false;
                  Timer.periodic(Duration(seconds: 1), (timer) {
                    if (isStop) timer.cancel();
                    setState(() {
                      counter++;
                    });
                  });
                },
                child: Text('Start timer'),
              ),
              SizedBox(height: 10),
              RaisedButton(
                onPressed: () {
                  isStop = true;
                },
                child: Text('Stop timer'),
              )
            ],
          ),
        ));
  }
}
