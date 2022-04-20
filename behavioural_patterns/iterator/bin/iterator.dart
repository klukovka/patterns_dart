abstract class Iterator<T> {
  T current();
  T next();
  int key();
  bool valid();
  void rewind();
}
