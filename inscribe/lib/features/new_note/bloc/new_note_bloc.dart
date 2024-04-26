import 'package:inscribe/core/data/model/app_bloc.dart';
import 'package:inscribe/core/data/model/note.dart';

part 'new_note_event.dart';
part 'new_note_state.dart';

class NewNoteBloc extends AppBloc<NewNoteEvent, NewNoteState> {
  NewNoteBloc() : super(NewNoteState()) {
    on<SaveNoteEvent>((event, emit) {});
  }
}
