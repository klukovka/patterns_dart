import 'application.dart';
import 'command.dart';
import 'editor.dart';

class CopyCommand extends Command {
  CopyCommand(Editor editor, Application app) : super(editor, app);

  @override
  bool call() {
    saveBackup();
    app.clipboard = editor.getSelection();
    return false;
  }
}
