import 'device.dart';

class Remote {
  final Device _device;

  Remote(this._device);

  void togglePower() {
    _device.isEnabled() ? _device.disable() : _device.enable();
  }

  void volumeDown() {
    final volume = _device.getVolume();
    _device.setVolume(volume - 10);
  }

  void volumeUp() {
    final volume = _device.getVolume();
    _device.setVolume(volume + 10);
  }

  void channelDown() {
    final channel = _device.getChannel();
    _device.setChannel(channel - 1);
  }

  void channelUp() {
    final channel = _device.getChannel();
    _device.setChannel(channel + 1);
  }
}

class AdvancedRemote extends Remote {
  AdvancedRemote(Device device) : super(device);

  void mute() {
    _device.setVolume(0);
  }
}
