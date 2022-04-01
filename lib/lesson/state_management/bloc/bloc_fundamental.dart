import 'package:erico_intro/lesson.dart';
import 'package:erico_intro/lesson/state_management/bloc/color_bloc.dart';
import 'package:flutter/material.dart';

class BlocFundamentalPage extends StatefulWidget {
  @override
  State<BlocFundamentalPage> createState() => _BlocFundamentalPageState();
}

class _BlocFundamentalPageState extends State<BlocFundamentalPage> {
  ColorBloc colorBloc = ColorBloc();

  @override
  void dispose() {
    colorBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Lesson.Container_Widget.name),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                backgroundColor: Colors.amber,
                onPressed: () {
                  colorBloc.eventSink.add(ColorEvent.to_amber);
                }),
            SizedBox(width: 10),
            FloatingActionButton(
                backgroundColor: Colors.lightBlue,
                onPressed: () {
                  colorBloc.eventSink.add(ColorEvent.to_blue);
                }),
          ],
        ),
        body: Center(
            child: StreamBuilder<Color>(
          stream: colorBloc.stateStream,
          initialData: Colors.amber,
          builder: (context, snapshot) {
            return AnimatedContainer(
              width: 100,
              height: 100,
              color: snapshot.data,
              duration: Duration(seconds: 1),
            );
          },
        )));
  }
}
