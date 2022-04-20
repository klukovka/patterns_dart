import 'application.dart';
import 'command.dart';
import 'editor.dart';

class PasteCommand extends Command {
  PasteCommand(Editor editor, Application app) : super(editor, app);

  @override
  bool call() {
    saveBackup();
    editor.pasteSelection(app.clipboard);
    return true;
  }
}
