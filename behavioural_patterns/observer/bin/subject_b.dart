import 'subject.dart';

class SubjectB implements Subject {
  int count = 100;

  @override
  void update() {
    count -= 1;
    print('SubjectB was updated: $count');
  }
}
