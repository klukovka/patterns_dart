import 'application.dart';
import 'editor.dart';

abstract class Command {
  final Editor editor;
  final Application app;
  String backup = '';

  Command(this.editor, this.app);

  void saveBackup() {
    backup = editor.text;
  }

  void undo() {
    editor.text = backup;
  }

  bool call();
}
