import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Lesson.Image_Widget.name),
        ),
        body: Center(
          child: Container(
            color: Colors.green,
            width: 200,
            height: 200,
            padding: EdgeInsets.all(8),
            child: Image(
              image: NetworkImage(
                  'https://712431.smushcdn.com/1410584/wp-content/uploads/2021/10/Flutter-Bloc-Patern.jpg?lossy=0&strip=1&webp=1'),
              fit: BoxFit.contain,
              repeat: ImageRepeat.repeatY,
            ),
          ),
        ));
  }
}
