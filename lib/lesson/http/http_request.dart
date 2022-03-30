import 'package:erico_intro/lesson.dart';
import 'package:erico_intro/model/post_result_model.dart';
import 'package:erico_intro/model/user_model.dart';
import 'package:flutter/material.dart';

class HttpRequestPage extends StatefulWidget {
  @override
  State<HttpRequestPage> createState() => _HttpRequestPageState();
}

class _HttpRequestPageState extends State<HttpRequestPage> {
  PostResult? postResult;
  User? user;
  String? users;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Lesson.Http_Request.name),
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
                    setState(() {});
                  });
                },
                child: Text('POST'),
              ),
              Text((user != null)
                  ? '${user?.id} | ${user?.firstName} ${user?.lastName}'
                  : 'Tidak ada data'),
              RaisedButton(
                onPressed: () {
                  User.getUser('3').then((value) {
                    user = value;
                    setState(() {});
                  });
                },
                child: Text('GET OBJECT'),
              ),
              Text((users != null) ? '$users' : 'Tidak ada data'),
              RaisedButton(
                onPressed: () {
                  User.getUsers('1').then((value) {
                    users = '';
                    for (int i = 0; i < value.length; i++) {
                      users = '$users\n${value[i].firstName}';
                    }
                    setState(() {});
                  });
                },
                child: Text('GET LIST'),
              )
            ],
          ),
        ));
  }
}
