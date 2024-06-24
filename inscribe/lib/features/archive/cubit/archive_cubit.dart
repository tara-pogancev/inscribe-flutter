import 'package:bloc/bloc.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:meta/meta.dart';

part 'archive_state.dart';

class ArchiveCubit extends Cubit<ArchiveState> {
  ArchiveCubit() : super(ArchiveState());
}
