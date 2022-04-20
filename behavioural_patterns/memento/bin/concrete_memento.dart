import 'memento.dart';

class ConcreteMemento implements Memento {
  final String name;
  final String surname;
  final int age;
  final DateTime dateCreate;

  ConcreteMemento({
    required this.age,
    required this.dateCreate,
    required this.name,
    required this.surname,
  });

  @override
  int getAge() {
    return age;
  }

  @override
  DateTime getDate() {
    return dateCreate;
  }

  @override
  String getName() {
    return name;
  }

  @override
  String getSurname() {
    return surname;
  }
}
