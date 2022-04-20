import 'component_first.dart';
import 'component_second.dart';
import 'concrete_mediator.dart';

void main() {
  final c1 = ComponentFirst();
  final c2 = ComponentSecond();
  final mediator = ConcreteMediator(c1, c2);

  print('Client triggers operation A.');
  c1.doA();

  print('Client triggers operation D.');
  c2.doD();
}
