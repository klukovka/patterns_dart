import 'palyer.dart';

abstract class State {
  final Player player;

  State(this.player);

  void clickLock();
  void clickPlay();
  void clickNext();
  void clickPrevious();
}
