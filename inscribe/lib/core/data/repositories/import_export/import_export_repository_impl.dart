import 'dart:convert';
import 'dart:typed_data';

import 'package:inscribe/core/data/repositories/import_export/import_export_repository.dart';
import 'package:inscribe/core/data/repositories/notes/notes_repository.dart';

class ImportExportRepositoryImpl extends ImportExportRepository {
  final NotesRepository notesRepository;

  ImportExportRepositoryImpl({required this.notesRepository});

  @override
  Uint8List getExportedData() {
    final notes = notesRepository.getNotes();

    final List<Map<String, dynamic>> data =
        notes.map((note) => note.toJson()).toList();

    final jsonStringValue = jsonEncode(data);

    return utf8.encode(jsonStringValue);
  }
}
