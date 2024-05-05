import 'package:inscribe/core/domain/repositories/notes_repository.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:uuid/uuid.dart';

abstract class UseCase {
  final NotesRepository notesRepository = IC.getIt<NotesRepository>();
  final uuid = IC.getIt<Uuid>();
}
