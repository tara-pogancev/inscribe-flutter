import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:dynamic_themes/dynamic_themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/data/repositories/notes/notes_repository_impl.dart';
import 'package:inscribe/core/data/repositories/shared_preferences/shared_preference_repository.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/notification_controller.dart';
import 'package:inscribe/core/router/app_router.dart';

import 'firebase_options.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(hiveNotesBox);
  await Hive.openBox(hiveRemindersBox);
  IC.setUp();
  GoogleFonts.config.allowRuntimeFetching = true;
  LocaleSettings.useDeviceLocale();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  if (kReleaseMode) {
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  }

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

static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  State<InscribeApp> createState() => _InscribeAppState();
}

class _InscribeAppState extends State<InscribeApp> {
  final SharedPreferencesRepository _sharedPreferencesRepository = IC.getIt();

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
    final isFirstRun = _sharedPreferencesRepository.getIsFirstRun();

    String startRoute = (isFirstRun) ? Routes.welcome : Routes.home;

    if (kDebugMode) {
      // startRoute = Routes.notifications;
    }

    return DynamicTheme(
      themeCollection: getThemeCollection(context),
      defaultThemeId: AppThemes.light,
      builder: (context, theme) => MaterialApp.router(
        routerConfig: AppRouter.router(startRoute),
        debugShowCheckedModeBanner: false,
        title: Translations.of(context).appName,
        locale: TranslationProvider.of(context).flutterLocale,
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        theme: theme,
      ),
    );
  }
}
