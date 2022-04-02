import 'package:erico_intro/lesson/state_management/bloc/library/color_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'color_event.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorAmber()) {
    on<ColorToAmber>((event, emit) => emit(ColorAmber()));
    on<ColorToBlue>((event, emit) => emit(ColorBlue()));
  }
}
