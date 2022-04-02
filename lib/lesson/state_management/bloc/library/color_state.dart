import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class ColorState extends Equatable {
  Color color = Colors.amber;

  @override
  List<Object> get props => [color];
}

class ColorAmber extends ColorState {
  @override
  Color get color => Colors.amber;
}

class ColorBlue extends ColorState {
  @override
  Color get color => Colors.blue;
}
