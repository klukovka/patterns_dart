import 'subject.dart';

abstract class Observer {
  void addSubject(Subject subject);
  void removeSubject(Subject subject);
  void notify();
}
