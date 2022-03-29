import 'package:barcode_scan/barcode_scan.dart';
import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodePage extends StatefulWidget {
  @override
  State<QRCodePage> createState() => _QRCodePageState();
}

class _QRCodePageState extends State<QRCodePage> {
  String barcode = 'Hasil scan';

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Lesson.QR_Code.name),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              QrImage(
                data: 'wkwkwk1231',
                version: 6,
                size: 300,
                backgroundColor: Colors.grey,
                foregroundColor: Colors.amber,
                errorCorrectionLevel: QrErrorCorrectLevel.M,
                padding: EdgeInsets.all(20),
              ),
              Text(barcode),
              RaisedButton(
                onPressed: () async {
                  try {
                    var result = await BarcodeScanner.scan();
                    setState(() {
                      this.barcode = result.rawContent;
                    });
                  } on PlatformException catch (error) {
                    if (error.code == BarcodeScanner.cameraAccessDenied) {
                      setState(() {
                        this.barcode = 'Izin kamera tidak diizinkan oleh si pengguna';
                      });
                    } else {
                      setState(() {
                        this.barcode = 'Error: $error';
                      });
                    }
                  }
                },
                child: Text('Scan'),
              )
            ],
          ),
        ));
  }
}
