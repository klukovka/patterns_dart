import 'furniture_factory.dart';

void main() {
  final style = Styles.victorian;
  late final FurnitureFactory furnitureFactory;

  switch (style) {
    case Styles.arDeco:
      furnitureFactory = ArDecoFurnitureFactory();
      break;
    case Styles.modern:
      furnitureFactory = ModernFurnitureFactory();
      break;
    case Styles.victorian:
      furnitureFactory = VictorianFurnitureFactory();
      break;
    default:
      throw Exception('Error! Unknown style.');
  }

  final table = furnitureFactory.createTable();
  final sofa = furnitureFactory.createSofa();
  final chair = furnitureFactory.createChair();
}

enum Styles {
  victorian,
  modern,
  arDeco,
}
