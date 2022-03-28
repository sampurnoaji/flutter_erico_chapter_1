import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Lesson.QR_Code.name),
        ),
        body: Center(
          child: QrImage(
            data: 'wkwkwk1231',
            version: 6,
            size: 300,
            backgroundColor: Colors.grey,
            foregroundColor: Colors.amber,
            errorCorrectionLevel: QrErrorCorrectLevel.M,
            padding: EdgeInsets.all(20),
          ),
        ));
  }
}
