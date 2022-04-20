import 'package:equatable/equatable.dart';

class TreeType extends Equatable {
  final String name;
  final String color;
  final String texture;

  const TreeType({
    required this.color,
    required this.name,
    required this.texture,
  });

  void draw(
    String canvas,
    int x,
    int y,
  ) {
    print('''

            ********Tree********
            Name: $name
            Color: $color
            Texture: $texture
            Canvas: $canvas
            Coordinates: ($x, $y)
            *********************
            
            ''');
  }

  @override
  List<Object?> get props => [
        name,
        color,
        texture,
      ];
}
