import 'application.dart';
import 'command.dart';
import 'editor.dart';

class WriteCommand extends Command {
  String text;
  WriteCommand(
    Editor editor,
    Application app,
    this.text,
  ) : super(editor, app);

  @override
  bool call() {
    saveBackup();
    editor.pasteSelection(text);
    return true;
  }
}
