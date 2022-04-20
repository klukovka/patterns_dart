import 'forest.dart';
import 'tree_type.dart';

void main() {
  final forest = Forest();

  forest.factory.treeTypes.addAll([
    TreeType(color: 'Green', name: 'Liden', texture: 'Grange'),
    TreeType(color: 'White', name: 'Birch', texture: 'Thin'),
    TreeType(color: 'Brown', name: 'Oak', texture: 'Thick'),
  ]);

  forest.plantTree(10, 10, 'Liden', 'Green', 'Grange');
  forest.plantTree(34, 20, 'Liden', 'Brown', 'Grange');
  forest.plantTree(23, 30, 'Birch', 'White', 'Thin');
  forest.plantTree(11, 40, 'Birch', 'White', 'Thin');
  forest.plantTree(23, 50, 'Oak', 'Brown', 'Thick');
  forest.plantTree(98, 60, 'Oak', 'Green', 'Thick');
  forest.plantTree(100, 120, 'Oak', 'Green', 'Thick');

  print(forest.factory.treeTypes.length);
  forest.draw('Big forest');
}
