import 'shape.dart';
import 'visitor.dart';

class Circle implements Shape {
  @override
  void accept(Visitor visitor) {
    visitor.visitCircle(this);
  }

  @override
  void draw() {
    print('Draw Circle');
  }

  @override
  void move(int x, int y) {
    print('Move Circle to ($x,$y)');
  }
}
