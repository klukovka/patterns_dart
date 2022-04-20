import 'abstract_handler.dart';
import 'options.dart';

class MonkeyHandler extends AbstractHandler {
  @override
  String? handle(Options? request) {
    if (request == Options.banana) {
      return 'Monkey ate banana';
    }
    return super.handle(request);
  }
}
