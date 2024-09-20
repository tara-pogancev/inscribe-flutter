import 'package:bloc/bloc.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/features/archive/cubit/archive_cubit.dart';
import 'package:inscribe/features/home/bloc/home_bloc.dart';
import 'package:inscribe/features/note_details/usecases/archive_note_usecase.dart';
import 'package:inscribe/features/note_details/usecases/undo_archive_note_usecase.dart';
import 'package:meta/meta.dart';

part 'delete_note_event.dart';
part 'delete_note_state.dart';

class DeleteNoteBloc extends Bloc<DeleteNoteEvent, DeleteNoteState> {
  final archiveNoteUseCase = ArchiveNoteUseCase();
  final undoArchiveNoteUseCase = UndoArchiveNoteUseCase();
  final homeBloc = IC.getIt<HomeBloc>();
  final archiveCubit = IC.getIt<ArchiveCubit>();

  DeleteNoteBloc() : super(DeleteNoteState()) {
    on<ArchiveNote>((event, emit) {
      archiveNoteUseCase(event.note);
      emit(state.copyWith(lastDeletedNote: event.note));
      homeBloc.add(HomeFetchEvent());
      archiveCubit.fetchArchivedNotes();
    });

    on<UndoArchive>((event, emit) {
      if (state.lastDeletedNote != null) {
        undoArchiveNoteUseCase(state.lastDeletedNote!);
        emit(state.copyWith(lastDeletedNote: null));
        homeBloc.add(HomeFetchEvent());
        archiveCubit.fetchArchivedNotes();
      }
    });
  }
}
