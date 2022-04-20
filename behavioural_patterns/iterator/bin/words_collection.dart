import 'aggregator.dart';
import 'alphabetical_order_iterator.dart';
import 'iterator.dart';

class WordsCollection implements Aggregator {
  final List<String> _items = [];

  List<String> getItems() {
    return _items;
  }

  int getCount() {
    return _items.length;
  }

  void addItem(String item) {
    _items.add(item);
  }

  @override
  Iterator<String> getIterator() {
    return AlphabeticalOrderIterator(this);
  }

  Iterator<String> getReverseIterator() {
    return AlphabeticalOrderIterator(this, true);
  }
}
