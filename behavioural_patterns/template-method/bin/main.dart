import 'concrete_class_a.dart';
import 'concrete_class_b.dart';

void main() {
  final ex1 = ConcreteClassA();
  final ex2 = ConcreteClassB();

  ex1.templateMethod();
  ex2.templateMethod();
}
