import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:inscribe/core/data/repositories/notes_repository_impl.dart';
import 'package:inscribe/core/domain/repositories/shared_preference_repository.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/router/app_router.dart';

import 'firebase_options.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(hiveNotesBox);
  IC.setUp();
  GoogleFonts.config.allowRuntimeFetching = true;
  LocaleSettings.useDeviceLocale();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  if (kReleaseMode) {
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  }

  WidgetsFlutterBinding.ensureInitialized();
  runApp(TranslationProvider(child: InscribeApp()));
}

class InscribeApp extends StatelessWidget {
  InscribeApp({super.key});

  final SharedPreferencesRepository _sharedPreferencesRepository = IC.getIt();

  @override
  Widget build(BuildContext context) {
    final isFirstRun = _sharedPreferencesRepository.getIsFirstRun();

    return MaterialApp.router(
      routerConfig:
          AppRouter.router((isFirstRun) ? Routes.welcome : Routes.home),
      debugShowCheckedModeBanner: false,
      title: 'Inscribe - Companion Journal',
      locale: TranslationProvider.of(context).flutterLocale,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
        useMaterial3: true,
      ),
    );
  }
}
