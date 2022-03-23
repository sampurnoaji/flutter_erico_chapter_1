import 'package:flutter/material.dart';

class StatefulWidgetPage extends StatefulWidget {
  @override
  _StateAppState createState() => _StateAppState();
}

class _StateAppState extends State<StatefulWidgetPage> {
  int number = 0;

  void tambahBilangan() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number.toString(),
              style: TextStyle(fontSize: 10 + number.toDouble()),
            ),
            ElevatedButton(
                onPressed: tambahBilangan, child: Text('Tambah Bilangan'))
          ],
        ),
      ),
    );
  }
}
