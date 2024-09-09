import 'dart:io';
import 'dart:typed_data';

abstract class ImportExportRepository {
  Uint8List getExportedData();

  Future<bool> importFromFile(File file);
}
