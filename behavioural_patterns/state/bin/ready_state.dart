import 'locked_state.dart';
import 'palyer.dart';
import 'playing_state.dart';
import 'state.dart';

class ReadyState extends State {
  ReadyState(Player player) : super(player);

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
    player.changeState(PlayingState(player));
  }

  @override
  void clickPrevious() {
    player.previous();
  }
}
