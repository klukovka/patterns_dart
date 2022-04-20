import 'application.dart';
import 'copy_command.dart';
import 'cut_command.dart';
import 'editor.dart';
import 'paste_command.dart';
import 'write_command.dart';

void main() {
  final editor = Editor();
  final app = Application(editor);

  final copy = CopyCommand(editor, app);
  final paste = PasteCommand(editor, app);
  final cut = CutCommand(editor, app);
  final write = WriteCommand(editor, app, 'text');

  app.executeCommand(write);
  app.executeCommand(copy);
  app.executeCommand(paste);
  print(app.editor.text);
  print(app.history.history);

  app.executeCommand(cut);
  print(app.editor.text);
  print(app.history.history);

  app.undo();
  print(app.editor.text);
  print(app.history.history);

  app.executeCommand(paste);
  write.text = 'new';
  app.executeCommand(write);
  print(app.editor.text);
  print(app.history.history);
}
