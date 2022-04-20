import 'base_component.dart';
import 'event.dart';

abstract class Mediator {
  void notify(
    BaseComponent component,
    Event event,
  );
}
