import 'shape.dart';
import 'visitor.dart';

class CompoundShape implements Shape {
  @override
  void accept(Visitor visitor) {
    visitor.visitCompoundShape(this);
  }

  @override
  void draw() {
    print('Draw CompoundShape');
  }

  @override
  void move(int x, int y) {
    print('Move CompoundShape to ($x,$y)');
  }
}
