
import 'package:flutter/material.dart';

class AnonymousMethodApp extends StatefulWidget {
  const AnonymousMethodApp({Key? key}) : super(key: key);

  @override
  _AnonymousMethodAppState createState() => _AnonymousMethodAppState();
}

class _AnonymousMethodAppState extends State<AnonymousMethodApp> {

  String message = 'Ini adalah teks';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Anonymous Method'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    message = 'Tombol sudah ditekan';
                  });
                },
                child: Text('Tekan saya'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
