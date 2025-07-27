import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_box_decorations.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/router/app_router.dart';
import 'package:inscribe/features/home/bloc/home_bloc.dart';

class BirthdayCard extends StatelessWidget {
  const BirthdayCard({super.key, required this.birthdayNote});

  final Note birthdayNote;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: InkWell(
        onTap: () async {
          await context.push(Routes.noteDetails, extra: birthdayNote.id);
          IC.getIt<HomeBloc>().add(HomeFetchEvent());
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: AppBoxDecorations.of(context).wavesBackground,
          child: Text(
            Translations.of(context)
                .homeScreen
                .its_birthday_today(name: birthdayNote.name),
            style: TextStyle(
                color: AppColorScheme.of(context).white, fontSize: 16),
            textAlign: TextAlign.start,
          ),
        ),
      ),
    );
  }
}
