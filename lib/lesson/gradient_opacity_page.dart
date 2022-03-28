import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';

class GradientOpacityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Lesson.Gradient_Opacity.name),
        ),
        backgroundColor: Colors.amber,
        body: Center(
          child: ShaderMask(
            shaderCallback: (rect) {
              return LinearGradient(
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
            },
            blendMode: BlendMode.dstIn,
            child: Image(
              width: 300,
              image: NetworkImage(
                  'https://712431.smushcdn.com/1410584/wp-content/uploads/2021/10/Flutter-Bloc-Patern.jpg?lossy=0&strip=1&webp=1'),
            ),
          ),
        ));
  }
}
