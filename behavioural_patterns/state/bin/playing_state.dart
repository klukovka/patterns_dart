import 'locked_state.dart';
import 'palyer.dart';
import 'ready_state.dart';
import 'state.dart';

class PlayingState extends State {
  PlayingState(Player player) : super(player);

  @override
  void clickLock() {
    player.changeState(LockedState(player));
  }

  @override
  void clickNext() {
    player.next();
  }

  @override
  void clickPlay() {
    player.changePlaying();
    player.changeState(ReadyState(player));
  }

  @override
  void clickPrevious() {
    player.previous();
  }
}
