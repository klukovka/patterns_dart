import 'context.dart';
import 'strategy_add.dart';
import 'strategy_multiply.dart';
import 'strategy_subtract.dart';

void main() {
  final context = Context(StrategyAdd());

  print(context.executeStrategy(10, 2));

  context.setStrategy(StrategySubtract());

  print(context.executeStrategy(10, 2));

  context.setStrategy(StrategyMultiply());

  print(context.executeStrategy(10, 2));
}
