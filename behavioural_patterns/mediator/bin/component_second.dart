import 'base_component.dart';
import 'event.dart';

class ComponentSecond extends BaseComponent {

  void doC() {
    print('ComponentSecond does C');
    mediator!.notify(this, Event.c);
  }

  void doD() {
    print('ComponentSecond does D');
    mediator!.notify(this, Event.d);
  }
}
