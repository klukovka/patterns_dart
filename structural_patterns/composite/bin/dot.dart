import 'graphic.dart';

class Dot implements Graphic {
  final String name;
  int x;
  int y;

  Dot({
    required this.name,
    required this.x,
    required this.y,
  });

  @override
  void draw() {
    print('Dot $name with ($x,$y)');
  }

  @override
  void move(int x, int y) {
    this.x += x;
    this.y += y;
    print('$name moved (${this.x},${this.y})');
  }
}
