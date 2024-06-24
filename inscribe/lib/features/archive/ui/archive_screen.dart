import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/widgets/app_scaffold.dart';
import 'package:inscribe/features/archive/cubit/archive_cubit.dart';
import 'package:inscribe/features/archive/ui/archieve_notes_grid.dart';
import 'package:inscribe/features/archive/ui/archive_header.dart';
import 'package:inscribe/features/home/ui/no_notes_section.dart';

class ArchiveScreen extends StatefulWidget {
  const ArchiveScreen({super.key});

  @override
  State<ArchiveScreen> createState() => _ArchiveScreenState();
}

class _ArchiveScreenState extends State<ArchiveScreen> {
  final _bloc = IC.getIt<ArchiveCubit>();

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      includeDefaultPadding: true,
      enableDrawer: true,
      child: Column(
        children: [
          ArchiveHeader(),
          SizedBox(
            height: 10,
          ),
          BlocBuilder<ArchiveCubit, ArchiveState>(
            bloc: _bloc,
            builder: (context, state) {
              return Flexible(
                child: (state.isLoading)
                    ? Container()
                    : AnimatedCrossFade(
                        firstChild: const NoNotesSection(),
                        secondChild: ArchieveNotesGrid(),
                        crossFadeState: (state.notes.isEmpty)
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                        duration: Durations.long1),
              );
            },
          ),
        ],
      ),
    );
  }
}
