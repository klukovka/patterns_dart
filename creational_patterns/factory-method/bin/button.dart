abstract class Button {
  void render();
  void onClick();
}

class WindowsButton implements Button {
  @override
  void onClick() {
    print('WindowsButton click');
  }

  @override
  void render() {
    print('WindowsButton render');
  }
}

class HttpButton implements Button {
  @override
  void onClick() {
    print('HttpButton click');
  }

  @override
  void render() {
    print('HttpButton render');
  }
}
