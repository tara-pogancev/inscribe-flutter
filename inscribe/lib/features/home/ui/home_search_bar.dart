import 'package:flutter/material.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_button_styles.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: true,
      style: AppTextStyles.of(context).defaultText,
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
            onPressed: () {},
          ),
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.grid_view_rounded,
            ),
            onPressed: () {},
          )),
    );
  }
}
