import 'concrete_memento.dart';
import 'memento.dart';

class Original {
  String _name;
  String _surname;
  int _age;

  Original(
    this._age,
    this._name,
    this._surname,
  );

  void printInfo() {
    print('$_name $_surname: $_age y.o.');
  }

  void birthday() {
    _age += 1;
  }

  Memento save() {
    return ConcreteMemento(
      age: _age,
      dateCreate: DateTime.now(),
      name: _name,
      surname: _surname,
    );
  }

  void restore(Memento memento) {
    _age = memento.getAge();
    _name = memento.getName();
    _surname = memento.getSurname();
  }
}
