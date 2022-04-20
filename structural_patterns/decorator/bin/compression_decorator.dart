import 'data_source.dart';
import 'data_source_decorator.dart';

class CompressionDecorator  extends DataSourceDecorator {
  CompressionDecorator (DataSource wrappee) : super(wrappee);

  @override
  void writeData(String data) {
    super.writeData('$data compress');
  }

  @override
  String readData() {
    final data = super.readData();
    return '$data decompress';
  }   
}
