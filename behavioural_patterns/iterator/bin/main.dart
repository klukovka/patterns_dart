import 'words_collection.dart';

void main() {
  final collection = WordsCollection();
  collection.addItem('First');
  collection.addItem('Second');
  collection.addItem('Third');

  final iterator = collection.getIterator();

  while (iterator.valid()) {
    print(iterator.next());
  }

  final reverseIterator = collection.getReverseIterator();
  while (reverseIterator.valid()) {
    print(reverseIterator.next());
  }
}
