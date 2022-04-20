import 'subsystem_a.dart';
import 'subsystem_b.dart';
import 'system_facade.dart';

void main() {
  final subsystemA = SubsystemA();
  final subsystemB = SubsystemB();

  final facade = SystemFacade(subsystemA, subsystemB);

  print(facade.operation());
}
