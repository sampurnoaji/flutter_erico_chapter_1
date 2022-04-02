import 'package:erico_intro/lesson.dart';
import 'package:erico_intro/lesson/state_management/bloc/library/color_bloc.dart';
import 'package:erico_intro/lesson/state_management/bloc/library/color_event.dart';
import 'package:erico_intro/lesson/state_management/bloc/library/color_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocLibraryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ColorBloc(),
      child: BlocBuilder<ColorBloc, ColorState>(
        builder: (context, state) => Scaffold(
            appBar: AppBar(
              title: Text(Lesson.Bloc_Library.name),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                    backgroundColor: Colors.amber,
                    onPressed: () {
                      context.read<ColorBloc>().add(ColorToAmber());
                    }),
                SizedBox(width: 10),
                FloatingActionButton(
                    backgroundColor: Colors.blue,
                    onPressed: () {
                      context.read<ColorBloc>().add(ColorToBlue());
                    }),
              ],
            ),
            body: Center(
                child: AnimatedContainer(
              width: 100,
              height: 100,
              color: state.color,
              duration: Duration(seconds: 1),
            ))),
      ),
    );
  }
}
