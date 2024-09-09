import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/data/repositories/import_export/import_export_repository.dart';
import 'package:inscribe/core/data/repositories/notes/notes_repository.dart';
import 'package:inscribe/features/home/bloc/home_bloc.dart';

class ImportExportRepositoryImpl extends ImportExportRepository {
  final NotesRepository notesRepository;
  final HomeBloc homeBloc;

  ImportExportRepositoryImpl(
      {required this.notesRepository, required this.homeBloc});

  @override
  Uint8List getExportedData() {
    var notes = notesRepository.getNotes();
    notes = notes.where((note) => !note.isDeleted).toList();

    final List<Map<String, dynamic>> data =
        notes.map((note) => note.toJsonWithReminders()).toList();

    final jsonStringValue = jsonEncode(data);

    return utf8.encode(jsonStringValue);
  }

  @override
  Future<bool> importFromFile(File file) async {
    try {
      final jsonString = await file.readAsString();

      final jsonData = jsonDecode(jsonString);

      final notesToImport =
          jsonData.map((jsonItem) => Note.fromJson(jsonItem)).toList();

      for (var note in notesToImport) {
        notesRepository.updateNote(note);
      }

      homeBloc.add(HomeFetchEvent());
      return true;
    } on Exception catch (error) {
      if (kDebugMode) {
        print(error.toString());
      }
      return false;
    }
  }
}
