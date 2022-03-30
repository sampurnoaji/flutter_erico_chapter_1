import 'package:erico_intro/lesson.dart';
import 'package:erico_intro/model/post_result_model.dart';
import 'package:flutter/material.dart';

class HttpPostPage extends StatefulWidget {
  @override
  State<HttpPostPage> createState() => _HttpPostPageState();
}

class _HttpPostPageState extends State<HttpPostPage> {
  PostResult? postResult = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Lesson.Http_Post.name),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text((postResult != null)
                  ? '${postResult?.id} | ${postResult?.name} | ${postResult?.job} | ${postResult?.created}'
                  : 'Tidak ada data'),
              RaisedButton(
                onPressed: () {
                  PostResult.postUser('Marko', 'Penembak jitu').then((value) {
                    postResult = value;
                        setState(() {

                        });
                  });
                },
                child: Text('POST'),
              )
            ],
          ),
        ));
  }
}
