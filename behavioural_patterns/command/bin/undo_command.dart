import 'application.dart';
import 'command.dart';
import 'editor.dart';

class UndoCommand extends Command {
  UndoCommand(Editor editor, Application app) : super(editor, app);

  @override
  bool call() {
    app.undo();
    return false;
  }
}
