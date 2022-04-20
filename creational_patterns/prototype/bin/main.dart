import 'circle.dart';
import 'rectangle.dart';

void main() {
  final prototypeCircle = Circle(
    x: 3,
    y: 2,
    color: 'green',
    radius: 12,
  );

  final prototypeRectangle = Rectangle(
    x: 6,
    y: 2,
    color: 'brown',
    height: 20,
    width: 100,
  );

  final copyCircle = prototypeCircle.clone();
  final copyRectangle = prototypeRectangle.clone();

  print(prototypeCircle == copyCircle);
  print(prototypeRectangle == prototypeRectangle);
}
