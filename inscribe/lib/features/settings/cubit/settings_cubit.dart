import 'package:bloc/bloc.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/features/archive/cubit/archive_cubit.dart';
import 'package:inscribe/features/home/bloc/home_bloc.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final HomeBloc _homeBloc = IC.getIt();
  final ArchiveCubit _archiveCubit = IC.getIt();

  SettingsCubit() : super(SettingsState());

  void alertGridViewChange() {
    _homeBloc.add(RefreshIsGridView());
    _archiveCubit.refreshIsGridView();
  }
}
