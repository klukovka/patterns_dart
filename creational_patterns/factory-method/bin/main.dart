import 'dialog.dart';

void main() {
  final os = OS.web;

  late final Dialog dialog;

  switch (os) {
    case OS.windows:
      dialog = WindowsDialog();
      break;
    case OS.web:
      dialog = HttpDialog();
      break;
    default:
      throw Exception('Error! Unknown operating system.');
  }

  dialog.onLoad();
  dialog.onClick();
}

enum OS {
  windows,
  web,
}
