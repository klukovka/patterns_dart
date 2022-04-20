import 'rectangle.dart';
import 'dot.dart';
import 'compound_shape.dart';
import 'circle.dart';
import 'visitor.dart';

class XmlVisitor implements Visitor {
  @override
  void visitCircle(Circle circle) {
    print('Circle Is Visited By XmlVisitor');
  }

  @override
  void visitCompoundShape(CompoundShape compoundShape) {
    print('CompoundShape Is Visited By XmlVisitor');
  }

  @override
  void visitDot(Dot dot) {
    print('Dot Is Visited By XmlVisitor');
  }

  @override
  void visitRectangle(Rectangle rectangle) {
    print('Rectangle Is Visited By XmlVisitor');
  }
}
