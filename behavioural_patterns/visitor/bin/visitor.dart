import 'circle.dart';
import 'compound_shape.dart';
import 'dot.dart';
import 'rectangle.dart';

abstract class Visitor {
  void visitDot(Dot dot);
  void visitCircle(Circle circle);
  void visitRectangle(Rectangle rectangle);
  void visitCompoundShape(CompoundShape compoundShape);
}
