import 'caretaker.dart';
import 'original.dart';

void main() {
  final original = Original(12, 'Ann', 'Black');
  final caretaker = Caretaker(original);

  caretaker.backup();
  original.birthday();
  caretaker.backup();
  caretaker.backup();
  caretaker.showHistory();
  caretaker.undo();
  caretaker.undo();
  caretaker.showHistory();
}
