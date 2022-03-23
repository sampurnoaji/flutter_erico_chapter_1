import 'package:flutter/material.dart';

class AnonymousMethodPage extends StatefulWidget {
  @override
  _AnonymousMethodAppState createState() => _AnonymousMethodAppState();
}

class _AnonymousMethodAppState extends State<AnonymousMethodPage> {
  String message = 'Ini adalah teks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
