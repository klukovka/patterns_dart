import 'shape.dart';

class Circle extends Shape {
  final int radius;

  Circle({
    required int x,
    required int y,
    required String color,
    required this.radius,
  }) : super(
          x: x,
          y: y,
          color: color,
        );

  @override
  Shape clone() {
    return Circle(
      x: x,
      y: y,
      color: color,
      radius: radius,
    );
  }

  @override
  List<Object?> get props => [
        x,
        y,
        color,
        radius,
      ];
}
