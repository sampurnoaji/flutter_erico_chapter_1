import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefPage extends StatefulWidget {
  @override
  State<SharedPrefPage> createState() => _SharedPrefPageState();
}

class _SharedPrefPageState extends State<SharedPrefPage> {
  TextEditingController controller = TextEditingController(text: 'No name');
  bool isOn = false;

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    pref.setString('nama', controller.text);
    pref.setBool('isOn', isOn);
  }

  Future<String> getNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('nama') ?? 'No data';
  }

  Future<bool> getIsOn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('isOn') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Lesson.Shared_Pref.name),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controller,
              ),
              Switch(
                  value: isOn,
                  onChanged: (newValue) {
                    setState(() {
                      isOn = newValue;
                    });
                  }),
              RaisedButton(
                onPressed: () {
                  saveData();
                },
                child: Text('Save'),
              ),
              RaisedButton(
                onPressed: () {
                  getNama().then((value) {
                    controller.text = value;
                    setState(() {});
                  });
                  getIsOn().then((value) {
                    isOn = value;
                    setState(() {});
                  });
                },
                child: Text('Load'),
              )
            ],
          ),
        ));
  }
}
