import 'shape.dart';
import 'visitor.dart';

class Rectangle implements Shape {
  @override
  void accept(Visitor visitor) {
    visitor.visitRectangle(this);
  }

  @override
  void draw() {
    print('Draw Rectangle');
  }

  @override
  void move(int x, int y) {
    print('Move Rectangle to ($x,$y)');
  }
}
