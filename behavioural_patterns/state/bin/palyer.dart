import 'ready_state.dart';
import 'state.dart';

class Player {
  late State currentState;
  late bool playing;
  int currentSong = 0;

  Player() {
    currentState = ReadyState(this);
    playing = false;
  }

  void changeState(State state) {
    currentState = state;
  }

  void changePlaying() {
    playing = !playing;
  }

  void clickLock() {
    currentState.clickLock();
  }

  void clickNext() {
    currentState.clickNext();
  }

  void clickPlay() {
    currentState.clickPlay();
  }

  void clickPrevious() {
    currentState.clickPrevious();
  }

  void next() {
    if (currentSong > 100) {
      currentSong = 0;
    } else {
      currentSong += 1;
    }
  }

  void previous() {
    if (currentSong < 0) {
      currentSong = 100;
    } else {
      currentSong -= 1;
    }
  }
}
