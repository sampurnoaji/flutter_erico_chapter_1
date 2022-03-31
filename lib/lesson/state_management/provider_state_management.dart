import 'package:erico_intro/lesson.dart';
import 'package:erico_intro/lesson/state_management/application_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderStateManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ApplicationColor())],
      child: Scaffold(
          appBar: AppBar(
            title: Text(Lesson.Provider_state_management.name),
            backgroundColor: Colors.black,
          ),
          body: Builder(
            builder: (context) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      width: 100,
                      height: 100,
                      color: context.watch<ApplicationColor>().color,
                      margin: EdgeInsets.all(5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Amber'),
                        SizedBox(width: 5),
                        Switch(
                            value: context.watch<ApplicationColor>().isBlue,
                            onChanged: (value) {
                              context.read<ApplicationColor>().isBlue = value;
                            }),
                        SizedBox(width: 5),
                        Text('Blue'),
                      ],
                    ),
                  ],
                ),
              );
            }
          )),
    );
  }
}
