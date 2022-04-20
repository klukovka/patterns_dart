import 'base_component.dart';
import 'event.dart';

class ComponentFirst extends BaseComponent {

  void doA() {
    print('ComponentFirst does A');
    mediator!.notify(this, Event.a);
  }

  void doB() {
    print('ComponentFirst does B');
    mediator!.notify(this, Event.b);
  }
}
