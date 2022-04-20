import 'strategy.dart';

class StrategySubtract implements Strategy {
  StrategySubtract();
  @override
  int call(int a, int b) {
    return a - b;
  }
}
