import 'shape.dart';
import 'visitor.dart';

class Dot implements Shape {
  @override
  void accept(Visitor visitor) {
    visitor.visitDot(this);
  }

  @override
  void draw() {
    print('Draw dot');
  }

  @override
  void move(int x, int y) {
    print('Move dot to ($x,$y)');
  }
}
