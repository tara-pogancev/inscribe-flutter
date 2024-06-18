import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_button_styles.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/features/home/bloc/home_bloc.dart';

class HomeSearchBar extends StatefulWidget {
  const HomeSearchBar({super.key});

  @override
  State<HomeSearchBar> createState() => _HomeSearchBarState();
}

class _HomeSearchBarState extends State<HomeSearchBar> {
  final HomeBloc _bloc = IC.getIt();

  void _toggleViewMode() {
    _bloc.add(HomeToggleView());
  }

  void _updateSearch(String? searchText) {
    _bloc.add(HomeFilterBySearch(searchText: searchText));
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: true,
      style: AppTextStyles.of(context).defaultText,
      onChanged: (value) {
        _updateSearch(value);
      },
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
          fillColor: AppColorScheme.of(context).white,
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(defaultBorderRadius)),
          hintStyle: AppTextStyles.of(context).defaultText,
          hintText: Translations.of(context).homeScreen.welcome,
          prefixIcon: IconButton(
            icon: const Icon(
              Icons.menu_rounded,
            ),
            onPressed: () {
              //TODO
            },
          ),
          suffixIcon: BlocBuilder<HomeBloc, HomeState>(
            bloc: _bloc,
            builder: (context, state) {
              return IconButton(
                icon: Icon(
                  (state.isGridView)
                      ? Icons.grid_view_rounded
                      : Icons.splitscreen_outlined,
                ),
                onPressed: () {
                  _toggleViewMode();
                },
              );
            },
          )),
    );
  }
}
