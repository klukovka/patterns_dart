import 'data_source.dart';

class FileDataSource implements DataSource {
  final String filename;

  const FileDataSource(this.filename);

  @override
  String readData() {
    print('read from $filename');
    return filename;
  }

  @override
  void writeData(String data) {
    print('write $data to $filename');
  }
}
