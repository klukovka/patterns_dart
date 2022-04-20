import 'command.dart';
import 'command_history.dart';
import 'editor.dart';

class Application {
  String clipboard = '';
  final Editor editor;
  final history = CommandHistory();

  Application(this.editor);

  void executeCommand(Command command) {
    if (command()) {
      history.push(command);
    }
  }

  void undo() {
    final command = history.pop();
    if (command != null) {
      command.undo();
    }
  }
}
