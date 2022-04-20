import 'iterator.dart';
import 'words_collection.dart';

class AlphabeticalOrderIterator implements Iterator<String> {
  final WordsCollection _collection;
  bool _reverse = false;
  int _position = 0;

  AlphabeticalOrderIterator(
    this._collection, [
    bool reverse = false,
  ]) {
    _reverse = reverse;
    if (reverse) {
      _position = _collection.getCount() - 1;
    }
  }

  @override
  String current() {
    return _collection.getItems()[_position];
  }

  @override
  int key() {
    return _position;
  }

  @override
  String next() {
    final item = _collection.getItems()[_position];
    _position += _reverse ? -1 : 1;
    return item;
  }

  @override
  void rewind() {
    _position = _reverse ? _collection.getCount() - 1 : 0;
  }

  @override
  bool valid() {
    if (_reverse) {
      return _position >= 0;
    }
    return _position < _collection.getCount();
  }
}
