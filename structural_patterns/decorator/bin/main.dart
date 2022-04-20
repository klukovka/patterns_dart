import 'compression_decorator.dart';
import 'encryption_decorator.dart';
import 'file_data_source.dart';

void main() {
  final dataSource = FileDataSource('temp.txt');

  final encryptionDecorator = EncryptionDecorator(dataSource);
  final compressionDecorator = CompressionDecorator(dataSource);

  final encData = encryptionDecorator.readData();
  print(encData);
  encryptionDecorator.writeData('encryption data');

  final compData = compressionDecorator.readData();
  print(compData);
  compressionDecorator.writeData('compression data');
}
