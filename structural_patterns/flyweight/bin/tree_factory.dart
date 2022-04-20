import 'tree_type.dart';

class TreeFactory {
  final List<TreeType> treeTypes = [];

  TreeFactory();

  TreeType getTreeType(
    String name,
    String color,
    String texture,
  ) {
    final searchedType = TreeType(
      color: color,
      name: name,
      texture: texture,
    );

    for (final type in treeTypes) {
      if (type == searchedType) return type;
    }
    treeTypes.add(searchedType);
    return searchedType;
  }
}
