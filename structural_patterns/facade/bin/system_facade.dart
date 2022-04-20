import 'subsystem_a.dart';
import 'subsystem_b.dart';

class SystemFacade {
  final SubsystemA _subsystemA;
  final SubsystemB _subsystemB;

  const SystemFacade(
    this._subsystemA,
    this._subsystemB,
  );

  String operation() {
    var result = 'Facade initializes subsystems:\n';
    result += _subsystemA.operationA1();
    result += _subsystemB.operationB1();
    result += 'Facade orders subsystems to perform the action:\n';
    result += _subsystemA.operationA2();
    result += _subsystemB.operationB2();
    return result;
  }
}
