import 'dart:typed_data';

abstract class ImportExportRepository {
  Uint8List getExportedData();
}
