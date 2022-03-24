import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  TextEditingController controller = TextEditingController(text: 'Nilai awal');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Lesson.TextField_Widget.name),
        ),
        body: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.login),
                    prefixIcon: Icon(Icons.lock),
                    prefixText: 'prefixText: ',
                    labelText: 'labelText',
                    hintText: 'hint',
                    suffix: Container(width: 5, height: 5, color: Colors.red),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    filled: true,
                    fillColor: Colors.green.withOpacity(0.5)),
                controller: controller,
                onChanged: (value) {
                  setState(() {});
                },
                obscureText: true,
                maxLength: 6,
                maxLines: 1,
              ),
              Text(controller.text)
            ],
          ),
        ));
  }
}
