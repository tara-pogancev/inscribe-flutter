import 'package:inscribe/core/domain/model/app_bloc.dart';
import 'package:inscribe/core/domain/repositories/shared_preference_repository.dart';
import 'package:inscribe/core/injection_container.dart';

part 'welcome_event.dart';
part 'welcome_state.dart';

class WelcomeBloc extends AppBloc<WelcomeEvent, WelcomeState> {
  final _sharedPreferencesRepository = IC.getIt<SharedPreferencesRepository>();

  WelcomeBloc() : super(WelcomeState()) {
    on<FinishFirstRunEvent>((event, emit) {
      _sharedPreferencesRepository.setIsFirstRun(false);
    });
  }
}
