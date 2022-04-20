import 'circle.dart';
import 'compound_graphic.dart';
import 'dot.dart';

void main() {
  final all = CompoundGraphic();

  all.add(Dot(name: 'DOT1', x: 21, y: 12));
  all.add(Circle(x: 30, y: 33, name: 'CIRCLE1', radius: 8));

  final child = CompoundGraphic();
  child.add(Dot(name: 'DOT2', x: 121, y: 112));
  child.add(Circle(x: 310, y: 313, name: 'CIRCLE2', radius: 18));

  all.add(child);

  all.draw();

  print('');

  all.move(90, 90);

  print('');

  all.draw();
}
