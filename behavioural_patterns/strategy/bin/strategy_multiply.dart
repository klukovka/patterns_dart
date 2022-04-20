import 'strategy.dart';

class StrategyMultiply implements Strategy {
  StrategyMultiply();
  @override
  int call(int a, int b) {
    return a * b;
  }
}
