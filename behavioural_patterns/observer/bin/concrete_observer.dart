import 'observer.dart';
import 'subject.dart';

class ConcreteObserver implements Observer {
  final List<Subject> _subjects = [];
  @override
  void addSubject(Subject subject) {
    _subjects.add(subject);
  }

  @override
  void notify() {
    for (final subject in _subjects) {
      subject.update();
    }
  }

  @override
  void removeSubject(Subject subject) {
    _subjects.remove(subject);
  }
}
