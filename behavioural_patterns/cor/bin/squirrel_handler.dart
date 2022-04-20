import 'abstract_handler.dart';
import 'options.dart';

class SquirrelHandler extends AbstractHandler {
  @override
  String? handle(Options? request) {
    if (request == Options.nuts) {
      return 'Squirrel ate nuts';
    }
    return super.handle(request);
  }
}
