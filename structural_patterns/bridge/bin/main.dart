import 'device.dart';
import 'remote.dart';

void main() {
  final radio = Radio();
  final tv = TV();

  final remote = Remote(radio);
  final advRemote = AdvancedRemote(tv);

  remote.channelUp();
  remote.channelUp();
  remote.channelUp();
  remote.togglePower();
  remote.togglePower();
  remote.channelDown();
  remote.volumeDown();
  remote.volumeDown();
  remote.volumeUp();

  advRemote.mute();
}
