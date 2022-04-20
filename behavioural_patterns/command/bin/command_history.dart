import 'command.dart';

class CommandHistory {
  final List<Command> history = [];

  CommandHistory();

  void push(Command command) {
    history.add(command);
  }

  Command? pop() {
    if (history.isEmpty) return null;
    
    final command = history.last;
    history.removeLast();
    return command;
  }
}
