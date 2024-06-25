/// Generated file. Do not edit.
///
/// Original: lib/core/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 1
/// Strings: 56
///
/// Built on 2024-06-25 at 09:48 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get appName => 'Inscribe';
	String get cancel => 'Cancel';
	String get confirm => 'Confirm';
	String get undo => 'Undo';
	late final _StringsDrawerEn drawer = _StringsDrawerEn._(_root);
	late final _StringsWelcomeScreenEn welcomeScreen = _StringsWelcomeScreenEn._(_root);
	late final _StringsHomeScreenEn homeScreen = _StringsHomeScreenEn._(_root);
	late final _StringsNewNoteScreenEn newNoteScreen = _StringsNewNoteScreenEn._(_root);
	late final _StringsArchivedNotesEn archivedNotes = _StringsArchivedNotesEn._(_root);
	late final _StringsErrorMessagesEn errorMessages = _StringsErrorMessagesEn._(_root);
}

// Path: drawer
class _StringsDrawerEn {
	_StringsDrawerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get memoirs => 'Memoirs';
	String get archive => 'Archive';
	String get settings => 'Settings';
	String get calendar => 'Calendar [COMING SOON]';
	String get export => 'Export [COMING SOON]';
	String get import => 'Import [COMING SOON]';
}

// Path: welcomeScreen
class _StringsWelcomeScreenEn {
	_StringsWelcomeScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Welcome to Inscribe!';
	List<String> get slides => [
		'Celebrate friendships with personalized notes on likes, birthdays, and gift ideas.',
		'Curate thoughtful gift lists for each friend, making every occasion memorable.',
		'Take your friendships anywhere - easily download and transfer your data.',
		'Your privacy matters - enjoy full offline functionality, keeping your data secure.',
		'Never miss a beat - set reminders for special occasions and events.',
	];
	String get startButton => 'Start noting!';
}

// Path: homeScreen
class _StringsHomeScreenEn {
	_StringsHomeScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get welcome => 'Welcome!';
	String get no_notes_title => 'No notes found!';
	String get no_notes_subtitle => 'Start by adding a friend memoir.';
	String get add_note => 'Add note';
	String get pinned => 'Pinned';
	String get other => 'Other';
	String get search => 'Search';
}

// Path: newNoteScreen
class _StringsNewNoteScreenEn {
	_StringsNewNoteScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get friend_name_hint => 'What\'s their name?';
	String get fields_missing_error => 'Sorry! Some fields are missing!';
	String get overview => 'Overview';
	String get gift_ideas => 'Gift ideas';
	String get gift_ideas_hint => 'What would this person love as a gift?';
	String get reminders => 'Reminders';
	String get category => 'Category';
	List<String> get categories => [
		'Friend 😄',
		'Work 💼',
		'Family 🏠',
		'School 🎒',
		'Romantic ❤️‍🔥',
	];
	String get date_of_birth => 'Date of birth';
	String get description => 'Description';
	String get description_hint => 'Add any notes you\'d like here...';
	String get coming_soon => 'Coming soon';
	String get some_fields_are_missing => 'Some fields are missing!';
	String get note_saved => 'Note succesfully saved!';
	String get archive_note => 'Archive note';
	String archive_note_are_you_sure({required Object name}) => 'Are you sure you want to archive note for \'${name}?\'';
	String get note_achived => 'Note archived!';
}

// Path: archivedNotes
class _StringsArchivedNotesEn {
	_StringsArchivedNotesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get no_archived_notes => 'No archived notes!';
	String get no_archived_notes_subtitle => 'Your deleted notes will appear here.';
	String get delete_all_notes_forever_dialog_title => 'Delete all notes forever';
	String get delete_all_notes_forever_dialog_subtitle => 'This action cannot be undone. You archive will be emptied.';
	String get delete_note_forever_dialog_title => 'Delete note forever';
	String get delete_note_forever_dialog_subtitle => 'This action cannot be undone. You note will be deleted forever.';
	String get restore => 'Restore';
	String get delete_forever => 'Delete forever';
	String get note_deleted => 'Note deleted!';
	String get note_restored => 'Note restored!';
}

// Path: errorMessages
class _StringsErrorMessagesEn {
	_StringsErrorMessagesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get mandatory_field => 'This field is mandatory.';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appName': return 'Inscribe';
			case 'cancel': return 'Cancel';
			case 'confirm': return 'Confirm';
			case 'undo': return 'Undo';
			case 'drawer.memoirs': return 'Memoirs';
			case 'drawer.archive': return 'Archive';
			case 'drawer.settings': return 'Settings';
			case 'drawer.calendar': return 'Calendar [COMING SOON]';
			case 'drawer.export': return 'Export [COMING SOON]';
			case 'drawer.import': return 'Import [COMING SOON]';
			case 'welcomeScreen.title': return 'Welcome to Inscribe!';
			case 'welcomeScreen.slides.0': return 'Celebrate friendships with personalized notes on likes, birthdays, and gift ideas.';
			case 'welcomeScreen.slides.1': return 'Curate thoughtful gift lists for each friend, making every occasion memorable.';
			case 'welcomeScreen.slides.2': return 'Take your friendships anywhere - easily download and transfer your data.';
			case 'welcomeScreen.slides.3': return 'Your privacy matters - enjoy full offline functionality, keeping your data secure.';
			case 'welcomeScreen.slides.4': return 'Never miss a beat - set reminders for special occasions and events.';
			case 'welcomeScreen.startButton': return 'Start noting!';
			case 'homeScreen.welcome': return 'Welcome!';
			case 'homeScreen.no_notes_title': return 'No notes found!';
			case 'homeScreen.no_notes_subtitle': return 'Start by adding a friend memoir.';
			case 'homeScreen.add_note': return 'Add note';
			case 'homeScreen.pinned': return 'Pinned';
			case 'homeScreen.other': return 'Other';
			case 'homeScreen.search': return 'Search';
			case 'newNoteScreen.friend_name_hint': return 'What\'s their name?';
			case 'newNoteScreen.fields_missing_error': return 'Sorry! Some fields are missing!';
			case 'newNoteScreen.overview': return 'Overview';
			case 'newNoteScreen.gift_ideas': return 'Gift ideas';
			case 'newNoteScreen.gift_ideas_hint': return 'What would this person love as a gift?';
			case 'newNoteScreen.reminders': return 'Reminders';
			case 'newNoteScreen.category': return 'Category';
			case 'newNoteScreen.categories.0': return 'Friend 😄';
			case 'newNoteScreen.categories.1': return 'Work 💼';
			case 'newNoteScreen.categories.2': return 'Family 🏠';
			case 'newNoteScreen.categories.3': return 'School 🎒';
			case 'newNoteScreen.categories.4': return 'Romantic ❤️‍🔥';
			case 'newNoteScreen.date_of_birth': return 'Date of birth';
			case 'newNoteScreen.description': return 'Description';
			case 'newNoteScreen.description_hint': return 'Add any notes you\'d like here...';
			case 'newNoteScreen.coming_soon': return 'Coming soon';
			case 'newNoteScreen.some_fields_are_missing': return 'Some fields are missing!';
			case 'newNoteScreen.note_saved': return 'Note succesfully saved!';
			case 'newNoteScreen.archive_note': return 'Archive note';
			case 'newNoteScreen.archive_note_are_you_sure': return ({required Object name}) => 'Are you sure you want to archive note for \'${name}?\'';
			case 'newNoteScreen.note_achived': return 'Note archived!';
			case 'archivedNotes.no_archived_notes': return 'No archived notes!';
			case 'archivedNotes.no_archived_notes_subtitle': return 'Your deleted notes will appear here.';
			case 'archivedNotes.delete_all_notes_forever_dialog_title': return 'Delete all notes forever';
			case 'archivedNotes.delete_all_notes_forever_dialog_subtitle': return 'This action cannot be undone. You archive will be emptied.';
			case 'archivedNotes.delete_note_forever_dialog_title': return 'Delete note forever';
			case 'archivedNotes.delete_note_forever_dialog_subtitle': return 'This action cannot be undone. You note will be deleted forever.';
			case 'archivedNotes.restore': return 'Restore';
			case 'archivedNotes.delete_forever': return 'Delete forever';
			case 'archivedNotes.note_deleted': return 'Note deleted!';
			case 'archivedNotes.note_restored': return 'Note restored!';
			case 'errorMessages.mandatory_field': return 'This field is mandatory.';
			default: return null;
		}
	}
}
