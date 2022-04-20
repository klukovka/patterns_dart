import 'subject.dart';

class SubjectA implements Subject {
  int count = 0;
  @override
  void update() {
    count += 1;
    print('SubjectA was updated: $count');
  }
}
