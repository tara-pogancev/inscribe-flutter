import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/extensions/context_extensions.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_button_styles.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/presentation/widgets/app_button.dart';
import 'package:inscribe/core/router/app_router.dart';
import 'package:inscribe/features/home/bloc/home_bloc.dart';

class NoNotesSection extends StatelessWidget {
  const NoNotesSection({super.key});

  void _navigateNewNote(BuildContext context) async {
    final shouldRefresh = await context.push(Routes.newNote) as bool?;
    if (shouldRefresh ?? false) {
      final bloc = IC.getIt<HomeBloc>();
      bloc.add(HomeFetchEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    final assetImagePath =
        "assets/images/empty_illustration_${context.getIsDarkTheme() ? 'dark' : 'light'}.png";

    return FractionallySizedBox(
      widthFactor: 0.7,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              assetImagePath,
              width: double.infinity,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              Translations.of(context).homeScreen.no_notes_title,
              style: AppTextStyles.of(context).boldTitle,
              textAlign: TextAlign.center,
            ),
            Text(
              Translations.of(context).homeScreen.no_notes_subtitle,
              style: AppTextStyles.of(context).defaultText,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: AppButton(
                text: Translations.of(context).homeScreen.add_note,
                style: AppButtonStyles.of(context).black,
                onPressed: () {
                  _navigateNewNote(context);
                },
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
