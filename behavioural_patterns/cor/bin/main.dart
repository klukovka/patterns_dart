import 'dog.dart';
import 'monkey_handler.dart';
import 'options.dart';
import 'squirrel_handler.dart';

void main() {
  final monkey = MonkeyHandler();
  final squirrel = SquirrelHandler();
  final dog = DogHandler();

  monkey.setNext(squirrel).setNext(dog);

  print(monkey.handle(Options.meatball));
  print(monkey.handle(Options.nuts));
  print(monkey.handle(Options.banana));
  print(squirrel.handle(Options.banana));
}
