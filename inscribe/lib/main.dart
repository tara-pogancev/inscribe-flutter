import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/data/repositories/notes/notes_repository_impl.dart';
import 'package:inscribe/core/data/repositories/shared_preferences/shared_preference_repository.dart';
import 'package:inscribe/core/domain/notification_controller.dart';
import 'package:inscribe/core/domain/simple_bloc_observer.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';

import 'firebase_options.dart';

void main() async {
  // Hive, IC, Bloc Observer
  await Hive.initFlutter();
  await Hive.openBox(hiveNotesBox);
  await Hive.openBox(hiveRemindersBox);
  IC.setUp();
  Bloc.observer = SimpleBlocObserver(shouldPrintDebugInfo: false);

  // Google fonts
  GoogleFonts.config.allowRuntimeFetching = true;

  // Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  if (kReleaseMode) {
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  }

  // Initialize application language
  final savedAppLocale =
      IC.getIt<SharedPreferencesRepository>().getSavedAppLocale();
  if (savedAppLocale == null) {
    LocaleSettings.useDeviceLocale();
  } else {
    LocaleSettings.setLocale(savedAppLocale);
  }

  // Notifications
  AwesomeNotifications().initialize(
      "resource://drawable/res_app_icon",
      [
        NotificationChannel(
            channelGroupKey: remindersChannelGroupKey,
            channelKey: remindersChannelKey,
            channelName: remindersChannelName,
            channelDescription: remindersChannelDescription,
            defaultColor: lightAppColorScheme.beige,
            ledColor: Colors.white),
        NotificationChannel(
            channelGroupKey: birthdayChannelGroupKey,
            channelKey: birthdayChannelKey,
            channelName: birthdayChannelName,
            channelDescription: birthdayChannelDescription,
            defaultColor: lightAppColorScheme.beige,
            ledColor: Colors.white)
      ],
      debug: kDebugMode);

  WidgetsFlutterBinding.ensureInitialized();
  runApp(TranslationProvider(child: const InscribeApp()));
}

class InscribeApp extends StatefulWidget {
  const InscribeApp({super.key});

  @override
  State<InscribeApp> createState() => _InscribeAppState();
}

class _InscribeAppState extends State<InscribeApp> {
  @override
  void initState() {
    AwesomeNotifications().setListeners(
        onActionReceivedMethod: NotificationController.onActionReceivedMethod,
        onNotificationCreatedMethod:
            NotificationController.onNotificationCreatedMethod,
        onNotificationDisplayedMethod:
            NotificationController.onNotificationDisplayedMethod,
        onDismissActionReceivedMethod:
            NotificationController.onDismissActionReceivedMethod);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: IC.getIt<GoRouter>(),
      debugShowCheckedModeBanner: false,
      title: Translations.of(context).appName,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      theme: getThemeCollection(context)[0],
    );
  }
}
