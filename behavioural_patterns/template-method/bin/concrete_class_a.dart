import 'abstract_class.dart';

class ConcreteClassA extends AbstractClass {
  @override
  void requiredOperation2() {
    print('ConcreteClassA says: Implemented Operation2');
  }

  @override
  void requiredOperations1() {
    print('ConcreteClassA says: Implemented Operation1');
  }
}
