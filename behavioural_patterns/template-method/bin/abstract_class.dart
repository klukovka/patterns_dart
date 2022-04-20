abstract class AbstractClass {
  void templateMethod() {
    baseOperation1();
    requiredOperations1();
    baseOperation2();
    hook1();
    requiredOperation2();
    baseOperation3();
    hook2();
  }

  void baseOperation1() {
    print('AbstractClass says: I am doing the bulk of the work');
  }

  void baseOperation2() {
    print('AbstractClass says: But I let subclasses override some operations');
  }

  void baseOperation3() {
    print('AbstractClass says: But I am doing the bulk of the work anyway');
  }

  void requiredOperations1();
  void requiredOperation2();

  void hook1() {}
  void hook2() {}
}
