import 'concrete_observer.dart';
import 'subject_a.dart';
import 'subject_b.dart';

void main() {
  final observer = ConcreteObserver();
  final sa1 = SubjectA();
  final sa2 = SubjectA();
  observer.addSubject(sa1);
  observer.addSubject(sa2);
  observer.notify();
  final sb1 = SubjectB();
  final sb2 = SubjectB();
  observer.addSubject(sb1);
  observer.addSubject(sb2);
  observer.notify();


  final sa3 = SubjectA();
  final sa4 = SubjectA();
  final sb3 = SubjectB();
  final sb4 = SubjectB();

  observer.addSubject(sa3);
  observer.addSubject(sa4);
  observer.addSubject(sb3);
  observer.addSubject(sb4);
  observer.notify();

}
