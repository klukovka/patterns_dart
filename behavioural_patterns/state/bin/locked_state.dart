import 'palyer.dart';
import 'playing_state.dart';
import 'ready_state.dart';
import 'state.dart';

class LockedState extends State {
  LockedState(Player player) : super(player);

  @override
  void clickLock() {
    player.playing
        ? player.changeState(PlayingState(player))
        : player.changeState(ReadyState(player));
  }

  @override
  void clickNext() {
  }

  @override
  void clickPlay() {
  }

  @override
  void clickPrevious() {
  }
}
