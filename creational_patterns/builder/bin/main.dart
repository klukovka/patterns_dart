import 'builder.dart';
import 'director.dart';

void main() {
  final director = Director();

  final carBuilder = CarBuilder();
  director.makeSportsCar(carBuilder);
  final car = carBuilder.getResult();
  print('$car');

  final manualBuilder = CarManualBuilder();
  director.makeSportsCar(manualBuilder);
  final manual = manualBuilder.getResult();
  print('$manual');
}
