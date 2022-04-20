import 'application.dart';
import 'command.dart';
import 'editor.dart';

class CutCommand extends Command {
  CutCommand(Editor editor, Application app) : super(editor, app);

  @override
  bool call() {
    saveBackup();
    app.clipboard = editor.getSelection();
    editor.deleteSelection();
    return true;
  }
}
