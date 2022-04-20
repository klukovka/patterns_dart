import 'chair.dart';
import 'sofa.dart';
import 'table.dart';

abstract class FurnitureFactory {
  Chair createChair();
  Table createTable();
  Sofa createSofa();
}

class VictorianFurnitureFactory implements FurnitureFactory {
  @override
  Chair createChair() {
    print('Create Victorian Chair');
    return VictorianChair();
  }

  @override
  Sofa createSofa() {
    print('Create Victorian Sofa');
    return VictorianSofa();
  }

  @override
  Table createTable() {
    print('Create Victorian Table');
    return VictorianTable();
  }
}

class ModernFurnitureFactory implements FurnitureFactory {
  @override
  Chair createChair() {
    print('Create Modern Chair');
    return ModernChair();
  }

  @override
  Sofa createSofa() {
    print('Create Modern Sofa');
    return ModernSofa();
  }

  @override
  Table createTable() {
    print('Create Modern Table');
    return ModernTable();
  }
}

class ArDecoFurnitureFactory implements FurnitureFactory {
  @override
  Chair createChair() {
    print('Create ArDeco Chair');
    return ArDecoChair();
  }

  @override
  Sofa createSofa() {
    print('Create ArDeco Sofa');
    return ArDecoSofa();
  }

  @override
  Table createTable() {
    print('Create ArDeco Table');
    return ArDecoTable();
  }
}
