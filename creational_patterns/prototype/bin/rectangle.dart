import 'shape.dart';

class Rectangle extends Shape {
  final int width;
  final int height;

  Rectangle({
    required int x,
    required int y,
    required String color,
    required this.height,
    required this.width,
  }) : super(
          x: x,
          y: y,
          color: color,
        );

  @override
  Shape clone() {
    return Rectangle(
      x: x,
      y: y,
      color: color,
      height: height,
      width: width,
    );
  }

  @override
  List<Object?> get props => [
        x,
        y,
        color,
        height,
        width,
      ];
}
