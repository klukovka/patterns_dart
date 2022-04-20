import 'options.dart';

abstract class Handler {
  Handler setNext(Handler handler);
  String? handle(Options? request);
}
