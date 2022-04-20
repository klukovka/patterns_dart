import 'data_source.dart';

class DataSourceDecorator implements DataSource {
  final DataSource _wrappee;

  const DataSourceDecorator(this._wrappee);
  @override
  String readData() {
    return _wrappee.readData();
  }

  @override
  void writeData(String data) {
    _wrappee.writeData(data);
  }
}
