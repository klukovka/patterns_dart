import 'handler.dart';
import 'options.dart';

abstract class AbstractHandler implements Handler {
  Handler? _nextHandler;

  AbstractHandler();

  @override
  Handler setNext(Handler handler) {
    _nextHandler = handler;
    return handler;
  }

  @override
  String? handle(Options? request) {
    if (_nextHandler != null) {
      return _nextHandler!.handle(request);
    }
    return null;
  }
}
