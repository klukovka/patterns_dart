import 'tree_type.dart';

class Tree {
  final int x;
  final int y;
  final TreeType type;

  const Tree({
    required this.type,
    required this.x,
    required this.y,
  });

  void draw(String canvas) {
    type.draw(canvas, x, y);
  }
}
