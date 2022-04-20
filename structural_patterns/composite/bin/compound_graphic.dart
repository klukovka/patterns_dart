import 'graphic.dart';

class CompoundGraphic implements Graphic {
  final List<Graphic> _children = [];

  CompoundGraphic();

  @override
  void draw() {
    for (var child in _children) {
      child.draw();
    }
  }

  @override
  void move(int x, int y) {
    for (var child in _children) {
      child.move(x, y);
    }
  }

  void add(Graphic child) {
    _children.add(child);
  }

  void remove(Graphic child) {
    _children.remove(child);
  }
}
