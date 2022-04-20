import 'strategy.dart';

class Context {
  Strategy? _strategy;

  Context([this._strategy]);

  void setStrategy(Strategy strategy) {
    _strategy = strategy;
  }

  int executeStrategy(int a, int b) {
    return _strategy!(a, b);
  }
}
