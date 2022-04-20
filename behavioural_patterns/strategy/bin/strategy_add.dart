import 'strategy.dart';

class StrategyAdd implements Strategy {
  StrategyAdd();

  @override
  int call(int a, int b) {
    return a + b;
  }
}
