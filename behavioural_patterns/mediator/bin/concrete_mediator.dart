import 'component_first.dart';
import 'component_second.dart';
import 'event.dart';
import 'base_component.dart';
import 'mediator.dart';

class ConcreteMediator implements Mediator {
  final ComponentFirst _first;
  final ComponentSecond _second;

  ConcreteMediator(this._first, this._second) {
    _first.setMediator(this);
    _second.setMediator(this);
  }

  @override
  void notify(BaseComponent component, Event event) {
    switch (event) {
      case Event.a:
        print('Mediator reacts on A and triggers following operations:');
        _second.doC();
        break;
      case Event.d:
        print('Mediator reacts on D and triggers following operations:');
        _first.doB();
        _second.doC();
        break;
      default:
        break;
    }
  }
}
