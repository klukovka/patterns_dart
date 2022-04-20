import 'package:equatable/equatable.dart';

abstract class Shape extends Equatable{
  final int x;
  final int y;
  final String color;

  const Shape({
    required this.x,
    required this.y,
    required this.color,
  });

  Shape clone();
}
