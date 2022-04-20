import 'mediator.dart';

class BaseComponent {
  Mediator? mediator;
  BaseComponent([this.mediator]);

  void setMediator(Mediator mediator) {
    this.mediator = mediator;
  }
}
