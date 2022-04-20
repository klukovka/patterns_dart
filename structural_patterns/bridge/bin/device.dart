abstract class Device {
  bool isEnabled();
  void enable();
  void disable();
  int getVolume();
  void setVolume(int percent);
  int getChannel();
  void setChannel(int channel);
}

class Radio implements Device {
  bool _enabled = true;
  int _volume = 50;
  int _channel = 1;

  Radio();

  @override
  void disable() {
    _enabled = false;
    print('Radio is off');
  }

  @override
  void enable() {
    _enabled = true;
    print('Radio is on');
  }

  @override
  int getChannel() {
    print('Radio is showing channel $_channel');
    return _channel;
  }

  @override
  int getVolume() {
    print('Radio volume is $_volume');
    return _volume;
  }

  @override
  bool isEnabled() {
    _enabled ? print('Radio is on') : print('Radio is off');
    return _enabled;
  }

  @override
  void setChannel(int channel) {
    if (channel < 1) {
      _channel = 200;
    } else if (channel > 200) {
      _channel = 1;
    } else {
      _channel = channel;
    }
    print('Switch radio to channel $_channel');
  }

  @override
  void setVolume(int percent) {
    if (percent < 0) {
      _volume = 0;
    } else if (percent > 100) {
      _volume = 100;
    } else {
      _volume = percent;
    }
    print('Switch radio to volume $_volume');
  }
}


class TV implements Device {
  bool _enabled = true;
  int _volume = 50;
  int _channel = 1;

  TV();

  @override
  void disable() {
    _enabled = false;
    print('TV is off');
  }

  @override
  void enable() {
    _enabled = true;
    print('TV is on');
  }

  @override
  int getChannel() {
    print('TV is showing channel $_channel');
    return _channel;
  }

  @override
  int getVolume() {
    print('TV volume is $_volume');
    return _volume;
  }

  @override
  bool isEnabled() {
    _enabled ? print('TV is on') : print('TV is off');
    return _enabled;
  }

  @override
  void setChannel(int channel) {
    if (channel < 1) {
      _channel = 20;
    } else if (channel > 20) {
      _channel = 1;
    } else {
      _channel = channel;
    }
    print('Switch TV to channel $_channel');
  }

  @override
  void setVolume(int percent) {
    if (percent < 0) {
      _volume = 0;
    } else if (percent > 100) {
      _volume = 100;
    } else {
      _volume = percent;
    }
    print('Switch TV to volume $_volume');
  }
}

