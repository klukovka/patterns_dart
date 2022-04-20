import 'data_source.dart';
import 'data_source_decorator.dart';

class EncryptionDecorator extends DataSourceDecorator {
  EncryptionDecorator(DataSource wrappee) : super(wrappee);

  @override
  void writeData(String data) {
    super.writeData('$data encrypt');
  }

  @override
  String readData() {
    final data = super.readData();
    return '$data decrypt';
  }
}
