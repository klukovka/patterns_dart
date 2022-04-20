import 'memento.dart';
import 'original.dart';

class Caretaker {
  final List<Memento> _mementos = [];
  final Original _original;

  Caretaker(this._original);

  void backup() {
    _mementos.add(_original.save());
  }

  void undo() {
    if (_mementos.isEmpty) {
      return;
    }

    final memento = _mementos.removeLast();

    _original.restore(memento);
  }

  void showHistory() {
    for (final memento in _mementos) {
      print(memento.getDate());
    }
    print('\n');
  }
}
