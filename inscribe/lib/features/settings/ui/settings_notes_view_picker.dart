import 'package:flutter/material.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/domain/repositories/shared_preference_repository.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';

class SettingsNotesViewPicker extends StatefulWidget {
  const SettingsNotesViewPicker({super.key});

  @override
  State<SettingsNotesViewPicker> createState() =>
      _SettingsNotesViewPickerState();
}

class _SettingsNotesViewPickerState extends State<SettingsNotesViewPicker> {
  final SharedPreferencesRepository _sharedPreferencesRepository = IC.getIt();
  bool isGridView = true;

  Map<bool, String> _getNoteViewValues(BuildContext context) {
    return Map<bool, String>.from({
      true: Translations.of(context).settingsScreen.grid_view,
      false: Translations.of(context).settingsScreen.list_view
    });
  }

  void _setIsGridView(bool isGridPreferedView) {
    _sharedPreferencesRepository.setIsGridPreferedView(isGridPreferedView);
    setState(() {
      isGridView = isGridPreferedView;
    });
  }

  bool _getIsGridView() {
    return _sharedPreferencesRepository.getIsGridPreferedView();
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      isGridView = _getIsGridView();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultScreenPadding / 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Translations.of(context).settingsScreen.use_grid_view,
                style: AppTextStyles.of(context).settingsTitle,
              ),
              Text(
                Translations.of(context).settingsScreen.grid_view_description,
                style: AppTextStyles.of(context).settingsSubtitle,
              ),
            ],
          ),
          Flexible(
            child: Switch(
              value: _getIsGridView(),
              onChanged: (value) {
                _setIsGridView(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
