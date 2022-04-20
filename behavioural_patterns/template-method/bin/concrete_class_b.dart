import 'abstract_class.dart';

class ConcreteClassB extends AbstractClass {
  @override
  void requiredOperation2() {
    print('ConcreteClassB says: Implemented Operation2');
  }

  @override
  void requiredOperations1() {
    print('ConcreteClassB says: Implemented Operation1');
  }

  @override
  void hook1() {
    print('ConcreteClassB says: Overridden Hook1');
  }
}
