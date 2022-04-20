import 'abstract_handler.dart';
import 'options.dart';

class DogHandler extends AbstractHandler {
  @override
  String? handle(Options? request) {
    if (request == Options.meatball) {
      return 'Dog ate meatball';
    }
    return super.handle(request);
  }
}
