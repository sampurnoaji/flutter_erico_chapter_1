import 'dart:ui';

import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';

class FontFeaturesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Lesson.Container_Widget.name),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Contoh 01 (Tanpa Apapun)',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Contoh 02 (Small Caps)',
                style: TextStyle(
                    fontSize: 20, fontFeatures: [FontFeature.enable('smcp')]),
              ),
              Text(
                'Contoh 3 3/3 (Small Caps & Frac)',
                style: TextStyle(fontSize: 20, fontFeatures: [
                  FontFeature.enable('smcp'),
                  FontFeature.enable('frac')
                ]),
              ),
              Text(
                'Contoh 4 (Old Style)',
                style: TextStyle(fontSize: 20, fontFamily: 'Poppins',fontFeatures: [
                  FontFeature.oldstyleFigures()
                ]),
              ),
              Text(
                'Contoh 5 (Stylistic Sets)',
                style: TextStyle(fontSize: 20, fontFamily: 'Poppins',fontFeatures: [
                  FontFeature.stylisticSet(10)
                ]),
              ),
            ],
          ),
        ));
  }
}
