import 'dot.dart';

class Circle extends Dot {
  final int radius;
  Circle({
    required int x,
    required int y,
    required String name,
    required this.radius,
  }) : super(x: x, y: y, name: name);

  @override
  void draw() {
    print('Circle $name with ($x,$y) and radius $radius');
    
  }
}
