import 'button.dart';

abstract class Dialog {
  void onClick() {
    final button = createButton();
    button.onClick();
  }

  void onLoad() {
    final button = createButton();
    button.render();
  }

  Button createButton();
}

class WindowsDialog extends Dialog {
  @override
  Button createButton() {
    return WindowsButton();
  }
}

class HttpDialog extends Dialog {
  @override
  Button createButton() {
    return HttpButton();
  }
}
