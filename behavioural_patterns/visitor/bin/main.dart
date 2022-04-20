import 'circle.dart';
import 'compound_shape.dart';
import 'dot.dart';
import 'rectangle.dart';
import 'shape.dart';
import 'xml_visitor.dart';

void main() {
  final shapes = <Shape>[
    Circle(),
    Dot(),
    Rectangle(),
    CompoundShape(),
  ];

  final xmlVisitor = XmlVisitor();

  for (final shape in shapes) {
    shape.accept(xmlVisitor);
  }
}
