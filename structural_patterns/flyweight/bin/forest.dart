import 'tree.dart';
import 'tree_factory.dart';

class Forest {
  final List<Tree> trees = [];
  final factory = TreeFactory();

  Forest();

  Tree plantTree(
    int x,
    int y,
    String name,
    String color,
    String texture,
  ) {
    final type = factory.getTreeType(name, color, texture);
    final tree = Tree(type: type, x: x, y: y);
    trees.add(tree);
    return tree;
  }

  void draw(String canvas) {
    for (final tree in trees) {
      tree.draw(canvas);
    }
  }
}
