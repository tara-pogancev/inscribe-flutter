import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/widgets/title_bar.dart';
import 'package:inscribe/features/archive/cubit/archive_cubit.dart';
import 'package:inscribe/features/archive/ui/delete_all_notes_forevers_dialog.dart';

class ArchiveHeader extends StatefulWidget {
  const ArchiveHeader({super.key});

  @override
  State<ArchiveHeader> createState() => _ArchiveHeaderState();
}

class _ArchiveHeaderState extends State<ArchiveHeader> {
  final ArchiveCubit _cubit = IC.getIt();

  void _openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  void _deleteAll() async {
    final shouldDelete = await showDialog(
        context: context,
        builder: (context) => const DeleteAllNotesForeversDialog()) as bool?;

    if (shouldDelete ?? false) {
      _cubit.deleteAllNotesForever();
    }
  }

  @override
  Widget build(BuildContext context) {
    return TitleBar(
      title: Translations.of(context).drawer.archive,
      startWidget: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          _openDrawer(context);
        },
      ),
      endWidget: BlocBuilder<ArchiveCubit, ArchiveState>(
        bloc: _cubit,
        builder: (context, state) {
          return IconButton(
            icon: const Icon(Icons.delete_forever),
            onPressed: (state.notes.isNotEmpty)
                ? () {
                    _deleteAll();
                  }
                : null,
          );
        },
      ),
    );
  }
}
