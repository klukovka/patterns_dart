import 'visitor.dart';

abstract class Shape {
  void move(int x, int y);
  void draw();
  void accept(Visitor visitor);
}
