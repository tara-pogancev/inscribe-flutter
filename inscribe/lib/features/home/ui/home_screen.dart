import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/widgets/app_scaffold.dart';
import 'package:inscribe/core/router/app_router.dart';
import 'package:inscribe/features/home/bloc/home_bloc.dart';
import 'package:inscribe/features/home/ui/home_notes_grid.dart';
import 'package:inscribe/features/home/ui/home_search_bar.dart';
import 'package:inscribe/features/home/ui/no_notes_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _bloc = IC.getIt<HomeBloc>();

  void _navigateNewNote(BuildContext context) async {
    await context.push(Routes.newNote);
    _bloc.add(HomeFetchEvent());
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      includeDefaultPadding: true,
      enableDrawer: true,
      fab: FloatingActionButton(
        backgroundColor: AppColorScheme.of(context).black,
        foregroundColor: AppColorScheme.of(context).white,
        onPressed: () {
          _navigateNewNote(context);
        },
        child: const Icon(Icons.add),
      ),
      child: Column(
        children: [
          const HomeSearchBar(),
          SizedBox(
            height: 10,
          ),
          BlocBuilder<HomeBloc, HomeState>(
            bloc: _bloc,
            builder: (context, state) {
              return Expanded(
                child: AnimatedCrossFade(
                    firstChild: const NoNotesSection(),
                    secondChild: const HomeNotesGrid(),
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
