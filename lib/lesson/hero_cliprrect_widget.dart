import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';

class HeroClipRRectWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Lesson.Hero_ClipRRect_Widget.name),
          backgroundColor: Colors.black,
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondPage();
            }));
          },
          child: Hero(
            tag: 'unique',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: 100,
                height: 100,
                child: Image(
                  image: NetworkImage(
                      'https://712431.smushcdn.com/1410584/wp-content/uploads/2021/10/Flutter-Bloc-Patern.jpg?lossy=0&strip=1&webp=1'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Lesson.Hero_ClipRRect_Widget.name),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Hero(
            tag: 'unique',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                width: 200,
                height: 200,
                child: Image(
                  image: NetworkImage(
                      'https://712431.smushcdn.com/1410584/wp-content/uploads/2021/10/Flutter-Bloc-Patern.jpg?lossy=0&strip=1&webp=1'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ));
  }
}
