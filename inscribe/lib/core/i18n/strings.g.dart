/// Generated file. Do not edit.
///
/// Original: lib/core/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 8
/// Strings: 816 (102 per locale)
///
/// Built on 2024-10-03 at 11:39 UTC

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
	en(languageCode: 'en', build: Translations.build),
	de(languageCode: 'de', build: _StringsDe.build),
	es(languageCode: 'es', build: _StringsEs.build),
	fr(languageCode: 'fr', build: _StringsFr.build),
	it(languageCode: 'it', build: _StringsIt.build),
	ru(languageCode: 'ru', build: _StringsRu.build),
	srLatn(languageCode: 'sr', scriptCode: 'Latn', build: _StringsSrLatn.build),
	tr(languageCode: 'tr', build: _StringsTr.build);

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
	String get edit => 'Edit';
	String get delete => 'Delete';
	late final _StringsErrorMessagesEn errorMessages = _StringsErrorMessagesEn._(_root);
	late final _StringsDrawerEn drawer = _StringsDrawerEn._(_root);
	late final _StringsImportExportEn importExport = _StringsImportExportEn._(_root);
	late final _StringsWelcomeScreenEn welcomeScreen = _StringsWelcomeScreenEn._(_root);
	late final _StringsHomeScreenEn homeScreen = _StringsHomeScreenEn._(_root);
	late final _StringsNewNoteScreenEn newNoteScreen = _StringsNewNoteScreenEn._(_root);
	late final _StringsArchivedNotesEn archivedNotes = _StringsArchivedNotesEn._(_root);
	late final _StringsSettingsScreenEn settingsScreen = _StringsSettingsScreenEn._(_root);
	late final _StringsCalendarScreenEn calendarScreen = _StringsCalendarScreenEn._(_root);
}

// Path: errorMessages
class _StringsErrorMessagesEn {
	_StringsErrorMessagesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get mandatory_field => 'This field is mandatory.';
}

// Path: drawer
class _StringsDrawerEn {
	_StringsDrawerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get memoirs => 'Memoirs';
	String get archive => 'Archive';
	String get settings => 'Settings';
	String get calendar => 'Calendar';
	String get export => 'Export';
	String get import => 'Import';
	String get debug_notifications => '[DEBUG] Notifications';
}

// Path: importExport
class _StringsImportExportEn {
	_StringsImportExportEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get fileDownloaded => 'The data has been saved on your file system.';
	String get dataHasBeenImported => 'Data from file has been imported.';
	String get error => 'An error occurred while importing data from file.';
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
	String get pin_note => 'Pin note';
	String get unpin_note => 'Unpin note';
}

// Path: newNoteScreen
class _StringsNewNoteScreenEn {
	_StringsNewNoteScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get friend_name_hint => 'Their name';
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
	String get select_image => 'Select image';
	String get remove_image => 'Remove image';
	String get randomize_illusrtation => 'Randomize illustration';
	String get unsaved_changes => 'Unsaved changes';
	String get save_changes_description => 'Do you wish to save your changes?';
	String get save => 'Save';
	String get discard => 'Discard';
	String get add_reminder => 'Add reminder';
	String get annual => 'Annual';
	String get this_reminder_will_be_repeated_every_year => 'This reminder will be repeated every year';
	String get name => 'Name';
	String get date => 'Date';
	String get time => 'Time';
	String get reminder_deleted => 'Reminder deleted!';
	String get no_reminders => 'No reminders';
	String get reminder_created => 'Reminder created!';
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

// Path: settingsScreen
class _StringsSettingsScreenEn {
	_StringsSettingsScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String app_name_and_version({required Object version}) => 'Inscribe, v${version}';
	String get theme => 'Theme';
	String get dark => 'Dark theme';
	String get light => 'Light theme';
	String get language => 'Language';
	String get english => 'English';
	String get serbian => 'Serbian';
	String get notes_view => 'Notes view';
	String get grid_view => 'Grid view';
	String get list_view => 'List view';
	String get use_dark_theme => 'Use dark theme';
	String get dark_theme_description => 'Reduce eye strain and save battery';
	String get use_grid_view => 'Use grid view';
	String get grid_view_description => 'Cards take up less space in a grid view';
	String get visual => 'Visual';
	String get system => 'System';
	String get change_theme => 'Change theme';
	String get apply_change => 'Apply change?';
	String get this_action_will_restart_the_app => 'This action will restart the app';
}

// Path: calendarScreen
class _StringsCalendarScreenEn {
	_StringsCalendarScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get birthday => 'Birthday';
	String get annualEvent => 'Annual event';
	String get oneTimeReminder => 'One time reminder';
}

// Path: <root>
class _StringsDe implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsDe.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsDe _root = this; // ignore: unused_field

	// Translations
	@override String get appName => 'Inscribe';
	@override String get cancel => 'Abbrechen';
	@override String get confirm => 'Bestätigen';
	@override String get undo => 'Rückgängig machen';
	@override String get edit => 'Bearbeiten';
	@override String get delete => 'Löschen';
	@override late final _StringsErrorMessagesDe errorMessages = _StringsErrorMessagesDe._(_root);
	@override late final _StringsDrawerDe drawer = _StringsDrawerDe._(_root);
	@override late final _StringsImportExportDe importExport = _StringsImportExportDe._(_root);
	@override late final _StringsWelcomeScreenDe welcomeScreen = _StringsWelcomeScreenDe._(_root);
	@override late final _StringsHomeScreenDe homeScreen = _StringsHomeScreenDe._(_root);
	@override late final _StringsNewNoteScreenDe newNoteScreen = _StringsNewNoteScreenDe._(_root);
	@override late final _StringsArchivedNotesDe archivedNotes = _StringsArchivedNotesDe._(_root);
	@override late final _StringsSettingsScreenDe settingsScreen = _StringsSettingsScreenDe._(_root);
	@override late final _StringsCalendarScreenDe calendarScreen = _StringsCalendarScreenDe._(_root);
}

// Path: errorMessages
class _StringsErrorMessagesDe implements _StringsErrorMessagesEn {
	_StringsErrorMessagesDe._(this._root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get mandatory_field => 'Dieses Feld ist erforderlich.';
}

// Path: drawer
class _StringsDrawerDe implements _StringsDrawerEn {
	_StringsDrawerDe._(this._root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get memoirs => 'Erinnerungen';
	@override String get archive => 'Archiv';
	@override String get settings => 'Einstellungen';
	@override String get calendar => 'Kalender';
	@override String get export => 'Exportieren';
	@override String get import => 'Importieren';
	@override String get debug_notifications => '[DEBUG] Benachrichtigungen';
}

// Path: importExport
class _StringsImportExportDe implements _StringsImportExportEn {
	_StringsImportExportDe._(this._root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get fileDownloaded => 'Die Daten wurden auf Ihr Dateisystem gespeichert.';
	@override String get dataHasBeenImported => 'Daten aus der Datei wurden importiert.';
	@override String get error => 'Es ist ein Fehler beim Importieren der Daten aus der Datei aufgetreten.';
}

// Path: welcomeScreen
class _StringsWelcomeScreenDe implements _StringsWelcomeScreenEn {
	_StringsWelcomeScreenDe._(this._root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Willkommen bei Inscribe!';
	@override List<String> get slides => [
		'Feiern Sie Freundschaften mit personalisierten Notizen zu Vorlieben, Geburtstagen und Geschenkideen.',
		'Erstellen Sie durchdachte Geschenkelisten für jeden Freund und machen Sie jeden Anlass unvergesslich.',
		'Nehmen Sie Ihre Freundschaften überallhin mit - laden Sie Ihre Daten ganz einfach herunter und übertragen Sie sie.',
		'Ihre Privatsphäre ist wichtig - genießen Sie die volle Offline-Funktionalität und halten Sie Ihre Daten sicher.',
		'Verpassen Sie nichts - richten Sie Erinnerungen für besondere Anlässe und Ereignisse ein.',
	];
	@override String get startButton => 'Notizen erstellen!';
}

// Path: homeScreen
class _StringsHomeScreenDe implements _StringsHomeScreenEn {
	_StringsHomeScreenDe._(this._root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'Willkommen!';
	@override String get no_notes_title => 'Keine Notizen gefunden!';
	@override String get no_notes_subtitle => 'Beginnen Sie mit dem Hinzufügen einer Freundesnotiz.';
	@override String get add_note => 'Notiz hinzufügen';
	@override String get pinned => 'Angeheftet';
	@override String get other => 'Andere';
	@override String get search => 'Suchen';
	@override String get pin_note => 'Notiz anheften';
	@override String get unpin_note => 'Notiz lösen';
}

// Path: newNoteScreen
class _StringsNewNoteScreenDe implements _StringsNewNoteScreenEn {
	_StringsNewNoteScreenDe._(this._root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get friend_name_hint => 'Wie heißt er/sie?';
	@override String get fields_missing_error => 'Entschuldigung! Einige Felder fehlen!';
	@override String get overview => 'Übersicht';
	@override String get gift_ideas => 'Geschenkideen';
	@override String get gift_ideas_hint => 'Was würde dieser Person als Geschenk gefallen?';
	@override String get reminders => 'Erinnerungen';
	@override String get category => 'Kategorie';
	@override List<String> get categories => [
		'Freund 😄',
		'Arbeit 💼',
		'Familie 🏠',
		'Schule 🎒',
		'Romantisch ❤️‍🔥',
	];
	@override String get date_of_birth => 'Geburtsdatum';
	@override String get description => 'Beschreibung';
	@override String get description_hint => 'Fügen Sie hier Ihre Notizen hinzu...';
	@override String get coming_soon => 'Bald verfügbar';
	@override String get some_fields_are_missing => 'Einige Felder fehlen!';
	@override String get note_saved => 'Notiz erfolgreich gespeichert!';
	@override String get archive_note => 'Notiz archivieren';
	@override String archive_note_are_you_sure({required Object name}) => 'Möchten Sie die Notiz für \'${name}\' wirklich archivieren?';
	@override String get note_achived => 'Notiz archiviert!';
	@override String get select_image => 'Bild auswählen';
	@override String get remove_image => 'Bild entfernen';
	@override String get randomize_illusrtation => 'Illustration zufällig auswählen';
	@override String get unsaved_changes => 'Nicht gespeicherte Änderungen';
	@override String get save_changes_description => 'Möchten Sie Ihre Änderungen speichern?';
	@override String get save => 'Speichern';
	@override String get discard => 'Verwerfen';
	@override String get add_reminder => 'Erinnerung hinzufügen';
	@override String get annual => 'Jährlich';
	@override String get this_reminder_will_be_repeated_every_year => 'Diese Erinnerung wird jedes Jahr wiederholt';
	@override String get name => 'Name';
	@override String get date => 'Datum';
	@override String get time => 'Uhrzeit';
	@override String get reminder_deleted => 'Erinnerung gelöscht!';
	@override String get no_reminders => 'Keine Erinnerungen';
	@override String get reminder_created => 'Erinnerung erstellt!';
}

// Path: archivedNotes
class _StringsArchivedNotesDe implements _StringsArchivedNotesEn {
	_StringsArchivedNotesDe._(this._root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get no_archived_notes => 'Keine archivierten Notizen!';
	@override String get no_archived_notes_subtitle => 'Ihre gelöschten Notizen werden hier angezeigt.';
	@override String get delete_all_notes_forever_dialog_title => 'Alle Notizen endgültig löschen';
	@override String get delete_all_notes_forever_dialog_subtitle => 'Diese Aktion kann nicht rückgängig gemacht werden. Ihr Archiv wird geleert.';
	@override String get delete_note_forever_dialog_title => 'Notiz endgültig löschen';
	@override String get delete_note_forever_dialog_subtitle => 'Diese Aktion kann nicht rückgängig gemacht werden. Ihre Notiz wird endgültig gelöscht.';
	@override String get restore => 'Wiederherstellen';
	@override String get delete_forever => 'Endgültig löschen';
	@override String get note_deleted => 'Notiz gelöscht!';
	@override String get note_restored => 'Notiz wiederhergestellt!';
}

// Path: settingsScreen
class _StringsSettingsScreenDe implements _StringsSettingsScreenEn {
	_StringsSettingsScreenDe._(this._root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String app_name_and_version({required Object version}) => 'Inscribe, v${version}';
	@override String get theme => 'Thema';
	@override String get dark => 'Dunkles Thema';
	@override String get light => 'Helles Thema';
	@override String get language => 'Sprache';
	@override String get english => 'Englisch';
	@override String get serbian => 'Serbisch';
	@override String get notes_view => 'Notizansicht';
	@override String get grid_view => 'Rasteransicht';
	@override String get list_view => 'Listenansicht';
	@override String get use_dark_theme => 'Dunkles Thema verwenden';
	@override String get dark_theme_description => 'Reduziert die Augenbelastung und spart Batterie';
	@override String get use_grid_view => 'Rasteransicht verwenden';
	@override String get grid_view_description => 'Karten nehmen in der Rasteransicht weniger Platz ein';
	@override String get visual => 'Visuell';
	@override String get system => 'System';
	@override String get change_theme => 'Thema ändern';
	@override String get apply_change => 'Änderung anwenden?';
	@override String get this_action_will_restart_the_app => 'Diese Aktion wird die App neu starten';
}

// Path: calendarScreen
class _StringsCalendarScreenDe implements _StringsCalendarScreenEn {
	_StringsCalendarScreenDe._(this._root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get birthday => 'Geburtstag';
	@override String get annualEvent => 'Jährliches Ereignis';
	@override String get oneTimeReminder => 'Einmalige Erinnerung';
}

// Path: <root>
class _StringsEs implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEs.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsEs _root = this; // ignore: unused_field

	// Translations
	@override String get appName => 'Inscribe';
	@override String get cancel => 'Cancelar';
	@override String get confirm => 'Confirmar';
	@override String get undo => 'Deshacer';
	@override String get edit => 'Editar';
	@override String get delete => 'Eliminar';
	@override late final _StringsErrorMessagesEs errorMessages = _StringsErrorMessagesEs._(_root);
	@override late final _StringsDrawerEs drawer = _StringsDrawerEs._(_root);
	@override late final _StringsImportExportEs importExport = _StringsImportExportEs._(_root);
	@override late final _StringsWelcomeScreenEs welcomeScreen = _StringsWelcomeScreenEs._(_root);
	@override late final _StringsHomeScreenEs homeScreen = _StringsHomeScreenEs._(_root);
	@override late final _StringsNewNoteScreenEs newNoteScreen = _StringsNewNoteScreenEs._(_root);
	@override late final _StringsArchivedNotesEs archivedNotes = _StringsArchivedNotesEs._(_root);
	@override late final _StringsSettingsScreenEs settingsScreen = _StringsSettingsScreenEs._(_root);
	@override late final _StringsCalendarScreenEs calendarScreen = _StringsCalendarScreenEs._(_root);
}

// Path: errorMessages
class _StringsErrorMessagesEs implements _StringsErrorMessagesEn {
	_StringsErrorMessagesEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get mandatory_field => 'Este campo es obligatorio.';
}

// Path: drawer
class _StringsDrawerEs implements _StringsDrawerEn {
	_StringsDrawerEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get memoirs => 'Memorias';
	@override String get archive => 'Archivo';
	@override String get settings => 'Configuración';
	@override String get calendar => 'Calendario';
	@override String get export => 'Exportar';
	@override String get import => 'Importar';
	@override String get debug_notifications => '[DEBUG] Notificaciones';
}

// Path: importExport
class _StringsImportExportEs implements _StringsImportExportEn {
	_StringsImportExportEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get fileDownloaded => 'Los datos se han guardado en su sistema de archivos.';
	@override String get dataHasBeenImported => 'Los datos del archivo se han importado.';
	@override String get error => 'Se produjo un error al importar los datos del archivo.';
}

// Path: welcomeScreen
class _StringsWelcomeScreenEs implements _StringsWelcomeScreenEn {
	_StringsWelcomeScreenEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Bienvenido a Inscribe!';
	@override List<String> get slides => [
		'Celebra las amistades con notas personalizadas sobre gustos, cumpleaños e ideas de regalos.',
		'Crea listas de regalos pensadas para cada amigo, haciendo que cada ocasión sea memorable.',
		'Lleva tus amistades a donde quieras: descarga y transfiere tus datos fácilmente.',
		'Tu privacidad es importante: disfruta de la funcionalidad totalmente offline, manteniendo tus datos seguros.',
		'No te pierdas nada: establece recordatorios para ocasiones especiales y eventos.',
	];
	@override String get startButton => '¡Comienza a anotar!';
}

// Path: homeScreen
class _StringsHomeScreenEs implements _StringsHomeScreenEn {
	_StringsHomeScreenEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get welcome => '¡Bienvenido!';
	@override String get no_notes_title => '¡No se encontraron notas!';
	@override String get no_notes_subtitle => 'Comienza agregando una memoria de un amigo.';
	@override String get add_note => 'Agregar nota';
	@override String get pinned => 'Fijado';
	@override String get other => 'Otro';
	@override String get search => 'Buscar';
	@override String get pin_note => 'Fijar nota';
	@override String get unpin_note => 'Desfijar nota';
}

// Path: newNoteScreen
class _StringsNewNoteScreenEs implements _StringsNewNoteScreenEn {
	_StringsNewNoteScreenEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get friend_name_hint => '¿Cómo se llama?';
	@override String get fields_missing_error => '¡Lo siento! Faltan algunos campos.';
	@override String get overview => 'Visión general';
	@override String get gift_ideas => 'Ideas de regalo';
	@override String get gift_ideas_hint => '¿Qué le gustaría recibir como regalo?';
	@override String get reminders => 'Recordatorios';
	@override String get category => 'Categoría';
	@override List<String> get categories => [
		'Amigo 😄',
		'Trabajo 💼',
		'Familia 🏠',
		'Escuela 🎒',
		'Romántico ❤️‍🔥',
	];
	@override String get date_of_birth => 'Fecha de nacimiento';
	@override String get description => 'Descripción';
	@override String get description_hint => 'Añade aquí las notas que desees...';
	@override String get coming_soon => 'Próximamente';
	@override String get some_fields_are_missing => '¡Faltan algunos campos!';
	@override String get note_saved => '¡Nota guardada con éxito!';
	@override String get archive_note => 'Archivar nota';
	@override String archive_note_are_you_sure({required Object name}) => '¿Estás seguro de que deseas archivar la nota para \'${name}\'?';
	@override String get note_achived => '¡Nota archivada!';
	@override String get select_image => 'Seleccionar imagen';
	@override String get remove_image => 'Eliminar imagen';
	@override String get randomize_illusrtation => 'Aleatorizar ilustración';
	@override String get unsaved_changes => 'Cambios no guardados';
	@override String get save_changes_description => '¿Deseas guardar tus cambios?';
	@override String get save => 'Guardar';
	@override String get discard => 'Descartar';
	@override String get add_reminder => 'Agregar recordatorio';
	@override String get annual => 'Anual';
	@override String get this_reminder_will_be_repeated_every_year => 'Este recordatorio se repetirá todos los años';
	@override String get name => 'Nombre';
	@override String get date => 'Fecha';
	@override String get time => 'Hora';
	@override String get reminder_deleted => '¡Recordatorio eliminado!';
	@override String get no_reminders => 'Sin recordatorios';
	@override String get reminder_created => '¡Recordatorio creado!';
}

// Path: archivedNotes
class _StringsArchivedNotesEs implements _StringsArchivedNotesEn {
	_StringsArchivedNotesEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get no_archived_notes => '¡No hay notas archivadas!';
	@override String get no_archived_notes_subtitle => 'Tus notas eliminadas aparecerán aquí.';
	@override String get delete_all_notes_forever_dialog_title => 'Eliminar todas las notas para siempre';
	@override String get delete_all_notes_forever_dialog_subtitle => 'Esta acción no se puede deshacer. Tu archivo se vaciará.';
	@override String get delete_note_forever_dialog_title => 'Eliminar nota para siempre';
	@override String get delete_note_forever_dialog_subtitle => 'Esta acción no se puede deshacer. Tu nota se eliminará para siempre.';
	@override String get restore => 'Restaurar';
	@override String get delete_forever => 'Eliminar para siempre';
	@override String get note_deleted => '¡Nota eliminada!';
	@override String get note_restored => '¡Nota restaurada!';
}

// Path: settingsScreen
class _StringsSettingsScreenEs implements _StringsSettingsScreenEn {
	_StringsSettingsScreenEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String app_name_and_version({required Object version}) => 'Inscribe, v${version}';
	@override String get theme => 'Tema';
	@override String get dark => 'Tema oscuro';
	@override String get light => 'Tema claro';
	@override String get language => 'Idioma';
	@override String get english => 'Inglés';
	@override String get serbian => 'Serbio';
	@override String get notes_view => 'Vista de notas';
	@override String get grid_view => 'Vista de cuadrícula';
	@override String get list_view => 'Vista de lista';
	@override String get use_dark_theme => 'Usar tema oscuro';
	@override String get dark_theme_description => 'Reduce el esfuerzo visual y ahorra batería';
	@override String get use_grid_view => 'Usar vista de cuadrícula';
	@override String get grid_view_description => 'Las tarjetas ocupan menos espacio en la vista de cuadrícula';
	@override String get visual => 'Visual';
	@override String get system => 'Sistema';
	@override String get change_theme => 'Cambiar tema';
	@override String get apply_change => '¿Aplicar cambio?';
	@override String get this_action_will_restart_the_app => 'Esta acción reiniciará la aplicación';
}

// Path: calendarScreen
class _StringsCalendarScreenEs implements _StringsCalendarScreenEn {
	_StringsCalendarScreenEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get birthday => 'Cumpleaños';
	@override String get annualEvent => 'Evento anual';
	@override String get oneTimeReminder => 'Recordatorio único';
}

// Path: <root>
class _StringsFr implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsFr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsFr _root = this; // ignore: unused_field

	// Translations
	@override String get appName => 'Inscribe';
	@override String get cancel => 'Annuler';
	@override String get confirm => 'Confirmer';
	@override String get undo => 'Annuler';
	@override String get edit => 'Éditer';
	@override String get delete => 'Supprimer';
	@override late final _StringsErrorMessagesFr errorMessages = _StringsErrorMessagesFr._(_root);
	@override late final _StringsDrawerFr drawer = _StringsDrawerFr._(_root);
	@override late final _StringsImportExportFr importExport = _StringsImportExportFr._(_root);
	@override late final _StringsWelcomeScreenFr welcomeScreen = _StringsWelcomeScreenFr._(_root);
	@override late final _StringsHomeScreenFr homeScreen = _StringsHomeScreenFr._(_root);
	@override late final _StringsNewNoteScreenFr newNoteScreen = _StringsNewNoteScreenFr._(_root);
	@override late final _StringsArchivedNotesFr archivedNotes = _StringsArchivedNotesFr._(_root);
	@override late final _StringsSettingsScreenFr settingsScreen = _StringsSettingsScreenFr._(_root);
	@override late final _StringsCalendarScreenFr calendarScreen = _StringsCalendarScreenFr._(_root);
}

// Path: errorMessages
class _StringsErrorMessagesFr implements _StringsErrorMessagesEn {
	_StringsErrorMessagesFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get mandatory_field => 'Ce champ est obligatoire.';
}

// Path: drawer
class _StringsDrawerFr implements _StringsDrawerEn {
	_StringsDrawerFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get memoirs => 'Mémoires';
	@override String get archive => 'Archive';
	@override String get settings => 'Paramètres';
	@override String get calendar => 'Calendrier';
	@override String get export => 'Exporter';
	@override String get import => 'Importer';
	@override String get debug_notifications => '[DEBUG] Notifications';
}

// Path: importExport
class _StringsImportExportFr implements _StringsImportExportEn {
	_StringsImportExportFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get fileDownloaded => 'Les données ont été enregistrées sur votre système de fichiers.';
	@override String get dataHasBeenImported => 'Les données du fichier ont été importées.';
	@override String get error => 'Une erreur est survenue lors de l\'importation des données du fichier.';
}

// Path: welcomeScreen
class _StringsWelcomeScreenFr implements _StringsWelcomeScreenEn {
	_StringsWelcomeScreenFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bienvenue sur Inscribe !';
	@override List<String> get slides => [
		'Célébrez les amitiés avec des notes personnalisées sur les goûts, les anniversaires et les idées de cadeaux.',
		'Créez des listes de cadeaux réfléchies pour chaque ami, rendant chaque occasion mémorable.',
		'Emportez vos amitiés partout - téléchargez et transférez facilement vos données.',
		'Votre vie privée compte - profitez d\'une fonctionnalité entièrement hors ligne, en gardant vos données sécurisées.',
		'Ne ratez jamais un événement - définissez des rappels pour les occasions spéciales et événements.',
	];
	@override String get startButton => 'Commencez à noter !';
}

// Path: homeScreen
class _StringsHomeScreenFr implements _StringsHomeScreenEn {
	_StringsHomeScreenFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'Bienvenue !';
	@override String get no_notes_title => 'Aucune note trouvée !';
	@override String get no_notes_subtitle => 'Commencez par ajouter une mémoire d\'ami.';
	@override String get add_note => 'Ajouter une note';
	@override String get pinned => 'Épinglé';
	@override String get other => 'Autre';
	@override String get search => 'Rechercher';
	@override String get pin_note => 'Épingler la note';
	@override String get unpin_note => 'Détacher la note';
}

// Path: newNoteScreen
class _StringsNewNoteScreenFr implements _StringsNewNoteScreenEn {
	_StringsNewNoteScreenFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get friend_name_hint => 'Comment s\'appelle-t-il/elle ?';
	@override String get fields_missing_error => 'Désolé ! Certains champs sont manquants !';
	@override String get overview => 'Aperçu';
	@override String get gift_ideas => 'Idées de cadeaux';
	@override String get gift_ideas_hint => 'Que voudrait recevoir cette personne en cadeau ?';
	@override String get reminders => 'Rappels';
	@override String get category => 'Catégorie';
	@override List<String> get categories => [
		'Ami 😄',
		'Travail 💼',
		'Famille 🏠',
		'École 🎒',
		'Romantique ❤️‍🔥',
	];
	@override String get date_of_birth => 'Date de naissance';
	@override String get description => 'Description';
	@override String get description_hint => 'Ajoutez vos notes ici...';
	@override String get coming_soon => 'Bientôt disponible';
	@override String get some_fields_are_missing => 'Certains champs sont manquants !';
	@override String get note_saved => 'Note enregistrée avec succès !';
	@override String get archive_note => 'Archiver la note';
	@override String archive_note_are_you_sure({required Object name}) => 'Êtes-vous sûr de vouloir archiver la note pour \'${name}\' ?';
	@override String get note_achived => 'Note archivée !';
	@override String get select_image => 'Sélectionner une image';
	@override String get remove_image => 'Supprimer l\'image';
	@override String get randomize_illusrtation => 'Illustration aléatoire';
	@override String get unsaved_changes => 'Modifications non enregistrées';
	@override String get save_changes_description => 'Souhaitez-vous enregistrer vos modifications ?';
	@override String get save => 'Enregistrer';
	@override String get discard => 'Annuler';
	@override String get add_reminder => 'Ajouter un rappel';
	@override String get annual => 'Annuel';
	@override String get this_reminder_will_be_repeated_every_year => 'Ce rappel sera répété chaque année';
	@override String get name => 'Nom';
	@override String get date => 'Date';
	@override String get time => 'Heure';
	@override String get reminder_deleted => 'Rappel supprimé !';
	@override String get no_reminders => 'Aucun rappel';
	@override String get reminder_created => 'Rappel créé !';
}

// Path: archivedNotes
class _StringsArchivedNotesFr implements _StringsArchivedNotesEn {
	_StringsArchivedNotesFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get no_archived_notes => 'Aucune note archivée !';
	@override String get no_archived_notes_subtitle => 'Vos notes supprimées apparaîtront ici.';
	@override String get delete_all_notes_forever_dialog_title => 'Supprimer toutes les notes définitivement';
	@override String get delete_all_notes_forever_dialog_subtitle => 'Cette action est irréversible. Votre archive sera vidée.';
	@override String get delete_note_forever_dialog_title => 'Supprimer la note définitivement';
	@override String get delete_note_forever_dialog_subtitle => 'Cette action est irréversible. Votre note sera supprimée définitivement.';
	@override String get restore => 'Restaurer';
	@override String get delete_forever => 'Supprimer définitivement';
	@override String get note_deleted => 'Note supprimée !';
	@override String get note_restored => 'Note restaurée !';
}

// Path: settingsScreen
class _StringsSettingsScreenFr implements _StringsSettingsScreenEn {
	_StringsSettingsScreenFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String app_name_and_version({required Object version}) => 'Inscribe, v${version}';
	@override String get theme => 'Thème';
	@override String get dark => 'Thème sombre';
	@override String get light => 'Thème clair';
	@override String get language => 'Langue';
	@override String get english => 'Anglais';
	@override String get serbian => 'Serbe';
	@override String get notes_view => 'Affichage des notes';
	@override String get grid_view => 'Vue en grille';
	@override String get list_view => 'Vue en liste';
	@override String get use_dark_theme => 'Utiliser le thème sombre';
	@override String get dark_theme_description => 'Réduisez la fatigue oculaire et économisez la batterie';
	@override String get use_grid_view => 'Utiliser la vue en grille';
	@override String get grid_view_description => 'Les cartes prennent moins de place en vue grille';
	@override String get visual => 'Visuel';
	@override String get system => 'Système';
	@override String get change_theme => 'Changer de thème';
	@override String get apply_change => 'Appliquer le changement ?';
	@override String get this_action_will_restart_the_app => 'Cette action redémarrera l\'application';
}

// Path: calendarScreen
class _StringsCalendarScreenFr implements _StringsCalendarScreenEn {
	_StringsCalendarScreenFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get birthday => 'Anniversaire';
	@override String get annualEvent => 'Événement annuel';
	@override String get oneTimeReminder => 'Rappel unique';
}

// Path: <root>
class _StringsIt implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsIt.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.it,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <it>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsIt _root = this; // ignore: unused_field

	// Translations
	@override String get appName => 'Inscribe';
	@override String get cancel => 'Annulla';
	@override String get confirm => 'Conferma';
	@override String get undo => 'Annulla';
	@override String get edit => 'Modifica';
	@override String get delete => 'Elimina';
	@override late final _StringsErrorMessagesIt errorMessages = _StringsErrorMessagesIt._(_root);
	@override late final _StringsDrawerIt drawer = _StringsDrawerIt._(_root);
	@override late final _StringsImportExportIt importExport = _StringsImportExportIt._(_root);
	@override late final _StringsWelcomeScreenIt welcomeScreen = _StringsWelcomeScreenIt._(_root);
	@override late final _StringsHomeScreenIt homeScreen = _StringsHomeScreenIt._(_root);
	@override late final _StringsNewNoteScreenIt newNoteScreen = _StringsNewNoteScreenIt._(_root);
	@override late final _StringsArchivedNotesIt archivedNotes = _StringsArchivedNotesIt._(_root);
	@override late final _StringsSettingsScreenIt settingsScreen = _StringsSettingsScreenIt._(_root);
	@override late final _StringsCalendarScreenIt calendarScreen = _StringsCalendarScreenIt._(_root);
}

// Path: errorMessages
class _StringsErrorMessagesIt implements _StringsErrorMessagesEn {
	_StringsErrorMessagesIt._(this._root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get mandatory_field => 'Questo campo è obbligatorio.';
}

// Path: drawer
class _StringsDrawerIt implements _StringsDrawerEn {
	_StringsDrawerIt._(this._root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get memoirs => 'Memorie';
	@override String get archive => 'Archivio';
	@override String get settings => 'Impostazioni';
	@override String get calendar => 'Calendario';
	@override String get export => 'Esporta';
	@override String get import => 'Importa';
	@override String get debug_notifications => '[DEBUG] Notifiche';
}

// Path: importExport
class _StringsImportExportIt implements _StringsImportExportEn {
	_StringsImportExportIt._(this._root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get fileDownloaded => 'I dati sono stati salvati sul tuo file system.';
	@override String get dataHasBeenImported => 'I dati dal file sono stati importati.';
	@override String get error => 'Si è verificato un errore durante l\'importazione dei dati dal file.';
}

// Path: welcomeScreen
class _StringsWelcomeScreenIt implements _StringsWelcomeScreenEn {
	_StringsWelcomeScreenIt._(this._root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Benvenuto su Inscribe!';
	@override List<String> get slides => [
		'Celebra le amicizie con note personalizzate sui gusti, compleanni e idee regalo.',
		'Crea liste di regali per ogni amico, rendendo ogni occasione memorabile.',
		'Porta le tue amicizie ovunque - scarica e trasferisci facilmente i tuoi dati.',
		'La tua privacy è importante - goditi la piena funzionalità offline, mantenendo i tuoi dati al sicuro.',
		'Non perdere un colpo - imposta promemoria per occasioni speciali ed eventi.',
	];
	@override String get startButton => 'Inizia a prendere appunti!';
}

// Path: homeScreen
class _StringsHomeScreenIt implements _StringsHomeScreenEn {
	_StringsHomeScreenIt._(this._root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'Benvenuto!';
	@override String get no_notes_title => 'Nessuna nota trovata!';
	@override String get no_notes_subtitle => 'Inizia aggiungendo una memoria di un amico.';
	@override String get add_note => 'Aggiungi nota';
	@override String get pinned => 'In evidenza';
	@override String get other => 'Altro';
	@override String get search => 'Cerca';
	@override String get pin_note => 'Metti in evidenza';
	@override String get unpin_note => 'Togli dall\'evidenza';
}

// Path: newNoteScreen
class _StringsNewNoteScreenIt implements _StringsNewNoteScreenEn {
	_StringsNewNoteScreenIt._(this._root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get friend_name_hint => 'Come si chiama?';
	@override String get fields_missing_error => 'Spiacente! Alcuni campi sono mancanti!';
	@override String get overview => 'Panoramica';
	@override String get gift_ideas => 'Idee regalo';
	@override String get gift_ideas_hint => 'Cosa amerebbe ricevere questa persona?';
	@override String get reminders => 'Promemoria';
	@override String get category => 'Categoria';
	@override List<String> get categories => [
		'Amico 😄',
		'Lavoro 💼',
		'Famiglia 🏠',
		'Scuola 🎒',
		'Romantico ❤️‍🔥',
	];
	@override String get date_of_birth => 'Data di nascita';
	@override String get description => 'Descrizione';
	@override String get description_hint => 'Aggiungi le note che desideri qui...';
	@override String get coming_soon => 'Prossimamente';
	@override String get some_fields_are_missing => 'Alcuni campi sono mancanti!';
	@override String get note_saved => 'Nota salvata con successo!';
	@override String get archive_note => 'Archivia nota';
	@override String archive_note_are_you_sure({required Object name}) => 'Sei sicuro di voler archiviare la nota per \'${name}?\'';
	@override String get note_achived => 'Nota archiviata!';
	@override String get select_image => 'Seleziona immagine';
	@override String get remove_image => 'Rimuovi immagine';
	@override String get randomize_illusrtation => 'Illustrazione casuale';
	@override String get unsaved_changes => 'Modifiche non salvate';
	@override String get save_changes_description => 'Vuoi salvare le modifiche?';
	@override String get save => 'Salva';
	@override String get discard => 'Scarta';
	@override String get add_reminder => 'Aggiungi promemoria';
	@override String get annual => 'Annuale';
	@override String get this_reminder_will_be_repeated_every_year => 'Questo promemoria verrà ripetuto ogni anno';
	@override String get name => 'Nome';
	@override String get date => 'Data';
	@override String get time => 'Ora';
	@override String get reminder_deleted => 'Promemoria eliminato!';
	@override String get no_reminders => 'Nessun promemoria';
	@override String get reminder_created => 'Promemoria creato!';
}

// Path: archivedNotes
class _StringsArchivedNotesIt implements _StringsArchivedNotesEn {
	_StringsArchivedNotesIt._(this._root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get no_archived_notes => 'Nessuna nota archiviata!';
	@override String get no_archived_notes_subtitle => 'Le tue note eliminate appariranno qui.';
	@override String get delete_all_notes_forever_dialog_title => 'Elimina tutte le note per sempre';
	@override String get delete_all_notes_forever_dialog_subtitle => 'Questa azione non può essere annullata. L\'archivio sarà vuoto.';
	@override String get delete_note_forever_dialog_title => 'Elimina nota per sempre';
	@override String get delete_note_forever_dialog_subtitle => 'Questa azione non può essere annullata. La nota verrà eliminata per sempre.';
	@override String get restore => 'Ripristina';
	@override String get delete_forever => 'Elimina per sempre';
	@override String get note_deleted => 'Nota eliminata!';
	@override String get note_restored => 'Nota ripristinata!';
}

// Path: settingsScreen
class _StringsSettingsScreenIt implements _StringsSettingsScreenEn {
	_StringsSettingsScreenIt._(this._root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String app_name_and_version({required Object version}) => 'Inscribe, v${version}';
	@override String get theme => 'Tema';
	@override String get dark => 'Tema scuro';
	@override String get light => 'Tema chiaro';
	@override String get language => 'Lingua';
	@override String get english => 'Inglese';
	@override String get serbian => 'Serbo';
	@override String get notes_view => 'Vista note';
	@override String get grid_view => 'Vista a griglia';
	@override String get list_view => 'Vista elenco';
	@override String get use_dark_theme => 'Usa tema scuro';
	@override String get dark_theme_description => 'Riduci l\'affaticamento degli occhi e risparmia batteria';
	@override String get use_grid_view => 'Usa vista a griglia';
	@override String get grid_view_description => 'Le schede occupano meno spazio nella vista a griglia';
	@override String get visual => 'Visuale';
	@override String get system => 'Sistema';
	@override String get change_theme => 'Cambia tema';
	@override String get apply_change => 'Applicare il cambiamento?';
	@override String get this_action_will_restart_the_app => 'Questa azione riavvierà l\'app';
}

// Path: calendarScreen
class _StringsCalendarScreenIt implements _StringsCalendarScreenEn {
	_StringsCalendarScreenIt._(this._root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get birthday => 'Compleanno';
	@override String get annualEvent => 'Evento annuale';
	@override String get oneTimeReminder => 'Promemoria una tantum';
}

// Path: <root>
class _StringsRu implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsRu.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsRu _root = this; // ignore: unused_field

	// Translations
	@override String get appName => 'Inscribe';
	@override String get cancel => 'Отмена';
	@override String get confirm => 'Подтвердить';
	@override String get undo => 'Отменить';
	@override String get edit => 'Редактировать';
	@override String get delete => 'Удалить';
	@override late final _StringsErrorMessagesRu errorMessages = _StringsErrorMessagesRu._(_root);
	@override late final _StringsDrawerRu drawer = _StringsDrawerRu._(_root);
	@override late final _StringsImportExportRu importExport = _StringsImportExportRu._(_root);
	@override late final _StringsWelcomeScreenRu welcomeScreen = _StringsWelcomeScreenRu._(_root);
	@override late final _StringsHomeScreenRu homeScreen = _StringsHomeScreenRu._(_root);
	@override late final _StringsNewNoteScreenRu newNoteScreen = _StringsNewNoteScreenRu._(_root);
	@override late final _StringsArchivedNotesRu archivedNotes = _StringsArchivedNotesRu._(_root);
	@override late final _StringsSettingsScreenRu settingsScreen = _StringsSettingsScreenRu._(_root);
	@override late final _StringsCalendarScreenRu calendarScreen = _StringsCalendarScreenRu._(_root);
}

// Path: errorMessages
class _StringsErrorMessagesRu implements _StringsErrorMessagesEn {
	_StringsErrorMessagesRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get mandatory_field => 'Это поле обязательно.';
}

// Path: drawer
class _StringsDrawerRu implements _StringsDrawerEn {
	_StringsDrawerRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get memoirs => 'Воспоминания';
	@override String get archive => 'Архив';
	@override String get settings => 'Настройки';
	@override String get calendar => 'Календарь';
	@override String get export => 'Экспорт';
	@override String get import => 'Импорт';
	@override String get debug_notifications => '[DEBUG] Уведомления';
}

// Path: importExport
class _StringsImportExportRu implements _StringsImportExportEn {
	_StringsImportExportRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get fileDownloaded => 'Данные сохранены в вашу файловую систему.';
	@override String get dataHasBeenImported => 'Данные из файла были импортированы.';
	@override String get error => 'Произошла ошибка при импорте данных из файла.';
}

// Path: welcomeScreen
class _StringsWelcomeScreenRu implements _StringsWelcomeScreenEn {
	_StringsWelcomeScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Добро пожаловать в Inscribe!';
	@override List<String> get slides => [
		'Отмечайте дружбу с персонализированными заметками о вкусах, днях рождения и идеях для подарков.',
		'Составляйте продуманные списки подарков для каждого друга, делая каждый случай запоминающимся.',
		'Берите свои дружбы с собой - легко загружайте и переносите данные.',
		'Ваша конфиденциальность важна - наслаждайтесь полной офлайн-функциональностью, сохраняя ваши данные в безопасности.',
		'Не пропустите важные события - устанавливайте напоминания для особых событий и мероприятий.',
	];
	@override String get startButton => 'Начать записи!';
}

// Path: homeScreen
class _StringsHomeScreenRu implements _StringsHomeScreenEn {
	_StringsHomeScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'Добро пожаловать!';
	@override String get no_notes_title => 'Заметок не найдено!';
	@override String get no_notes_subtitle => 'Начните с добавления воспоминаний о друге.';
	@override String get add_note => 'Добавить заметку';
	@override String get pinned => 'Закрепленные';
	@override String get other => 'Другие';
	@override String get search => 'Поиск';
	@override String get pin_note => 'Закрепить заметку';
	@override String get unpin_note => 'Открепить заметку';
}

// Path: newNoteScreen
class _StringsNewNoteScreenRu implements _StringsNewNoteScreenEn {
	_StringsNewNoteScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get friend_name_hint => 'Как его зовут?';
	@override String get fields_missing_error => 'Извините! Некоторые поля отсутствуют!';
	@override String get overview => 'Обзор';
	@override String get gift_ideas => 'Идеи подарков';
	@override String get gift_ideas_hint => 'Что бы понравилось этому человеку в подарок?';
	@override String get reminders => 'Напоминания';
	@override String get category => 'Категория';
	@override List<String> get categories => [
		'Друг 😄',
		'Работа 💼',
		'Семья 🏠',
		'Школа 🎒',
		'Романтика ❤️‍🔥',
	];
	@override String get date_of_birth => 'Дата рождения';
	@override String get description => 'Описание';
	@override String get description_hint => 'Добавьте любые заметки здесь...';
	@override String get coming_soon => 'Скоро будет';
	@override String get some_fields_are_missing => 'Некоторые поля отсутствуют!';
	@override String get note_saved => 'Заметка успешно сохранена!';
	@override String get archive_note => 'Архивировать заметку';
	@override String archive_note_are_you_sure({required Object name}) => 'Вы уверены, что хотите архивировать заметку для \'${name}?\'';
	@override String get note_achived => 'Заметка архивирована!';
	@override String get select_image => 'Выбрать изображение';
	@override String get remove_image => 'Удалить изображение';
	@override String get randomize_illusrtation => 'Случайная иллюстрация';
	@override String get unsaved_changes => 'Несохраненные изменения';
	@override String get save_changes_description => 'Вы хотите сохранить изменения?';
	@override String get save => 'Сохранить';
	@override String get discard => 'Отменить';
	@override String get add_reminder => 'Добавить напоминание';
	@override String get annual => 'Ежегодно';
	@override String get this_reminder_will_be_repeated_every_year => 'Это напоминание будет повторяться каждый год';
	@override String get name => 'Имя';
	@override String get date => 'Дата';
	@override String get time => 'Время';
	@override String get reminder_deleted => 'Напоминание удалено!';
	@override String get no_reminders => 'Нет напоминаний';
	@override String get reminder_created => 'Напоминание создано!';
}

// Path: archivedNotes
class _StringsArchivedNotesRu implements _StringsArchivedNotesEn {
	_StringsArchivedNotesRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get no_archived_notes => 'Архивных заметок нет!';
	@override String get no_archived_notes_subtitle => 'Ваши удаленные заметки появятся здесь.';
	@override String get delete_all_notes_forever_dialog_title => 'Удалить все заметки навсегда';
	@override String get delete_all_notes_forever_dialog_subtitle => 'Это действие не может быть отменено. Архив будет очищен.';
	@override String get delete_note_forever_dialog_title => 'Удалить заметку навсегда';
	@override String get delete_note_forever_dialog_subtitle => 'Это действие не может быть отменено. Заметка будет удалена навсегда.';
	@override String get restore => 'Восстановить';
	@override String get delete_forever => 'Удалить навсегда';
	@override String get note_deleted => 'Заметка удалена!';
	@override String get note_restored => 'Заметка восстановлена!';
}

// Path: settingsScreen
class _StringsSettingsScreenRu implements _StringsSettingsScreenEn {
	_StringsSettingsScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String app_name_and_version({required Object version}) => 'Inscribe, v${version}';
	@override String get theme => 'Тема';
	@override String get dark => 'Темная тема';
	@override String get light => 'Светлая тема';
	@override String get language => 'Язык';
	@override String get english => 'Английский';
	@override String get serbian => 'Сербский';
	@override String get notes_view => 'Просмотр заметок';
	@override String get grid_view => 'Сетка';
	@override String get list_view => 'Список';
	@override String get use_dark_theme => 'Использовать темную тему';
	@override String get dark_theme_description => 'Снижает нагрузку на глаза и экономит заряд батареи';
	@override String get use_grid_view => 'Использовать вид сетки';
	@override String get grid_view_description => 'Карточки занимают меньше места в виде сетки';
	@override String get visual => 'Визуализация';
	@override String get system => 'Система';
	@override String get change_theme => 'Изменить тему';
	@override String get apply_change => 'Применить изменения?';
	@override String get this_action_will_restart_the_app => 'Это действие перезапустит приложение';
}

// Path: calendarScreen
class _StringsCalendarScreenRu implements _StringsCalendarScreenEn {
	_StringsCalendarScreenRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get birthday => 'День рождения';
	@override String get annualEvent => 'Ежегодное событие';
	@override String get oneTimeReminder => 'Однократное напоминание';
}

// Path: <root>
class _StringsSrLatn implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsSrLatn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.srLatn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <sr-Latn>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsSrLatn _root = this; // ignore: unused_field

	// Translations
	@override String get appName => 'Inscribe';
	@override String get cancel => 'Otkaži';
	@override String get confirm => 'Potvrdi';
	@override String get undo => 'Poništi';
	@override String get edit => 'Izmeni';
	@override String get delete => 'Obriši';
	@override late final _StringsErrorMessagesSrLatn errorMessages = _StringsErrorMessagesSrLatn._(_root);
	@override late final _StringsDrawerSrLatn drawer = _StringsDrawerSrLatn._(_root);
	@override late final _StringsImportExportSrLatn importExport = _StringsImportExportSrLatn._(_root);
	@override late final _StringsWelcomeScreenSrLatn welcomeScreen = _StringsWelcomeScreenSrLatn._(_root);
	@override late final _StringsHomeScreenSrLatn homeScreen = _StringsHomeScreenSrLatn._(_root);
	@override late final _StringsNewNoteScreenSrLatn newNoteScreen = _StringsNewNoteScreenSrLatn._(_root);
	@override late final _StringsArchivedNotesSrLatn archivedNotes = _StringsArchivedNotesSrLatn._(_root);
	@override late final _StringsSettingsScreenSrLatn settingsScreen = _StringsSettingsScreenSrLatn._(_root);
	@override late final _StringsCalendarScreenSrLatn calendarScreen = _StringsCalendarScreenSrLatn._(_root);
}

// Path: errorMessages
class _StringsErrorMessagesSrLatn implements _StringsErrorMessagesEn {
	_StringsErrorMessagesSrLatn._(this._root);

	@override final _StringsSrLatn _root; // ignore: unused_field

	// Translations
	@override String get mandatory_field => 'Ovo polje je obavezno.';
}

// Path: drawer
class _StringsDrawerSrLatn implements _StringsDrawerEn {
	_StringsDrawerSrLatn._(this._root);

	@override final _StringsSrLatn _root; // ignore: unused_field

	// Translations
	@override String get memoirs => 'Memoari';
	@override String get archive => 'Arhiva';
	@override String get settings => 'Podešavanja';
	@override String get calendar => 'Kalendar';
	@override String get export => 'Izvoz podataka';
	@override String get import => 'Uvoz podataka';
	@override String get debug_notifications => '[DEBUG] Obaveštenja';
}

// Path: importExport
class _StringsImportExportSrLatn implements _StringsImportExportEn {
	_StringsImportExportSrLatn._(this._root);

	@override final _StringsSrLatn _root; // ignore: unused_field

	// Translations
	@override String get fileDownloaded => 'Podaci su sačuvani na uređaju.';
	@override String get dataHasBeenImported => 'Podaci su uvezeni iz dokumenta.';
	@override String get error => 'Došlo je do greške prilikom uvoza podataka.';
}

// Path: welcomeScreen
class _StringsWelcomeScreenSrLatn implements _StringsWelcomeScreenEn {
	_StringsWelcomeScreenSrLatn._(this._root);

	@override final _StringsSrLatn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dobrodošli u Inscribe!';
	@override List<String> get slides => [
		'Proslavite prijateljstva sa personalizovanim beleškama o omiljenim stvarima, rođendanima i idejama za poklone.',
		'Kreirajte pažljivo odabrane liste poklona za svakog prijatelja, čineći svaki događaj nezaboravnim.',
		'Nosite svoja prijateljstva svuda - lako preuzmite i prebacite svoje podatke.',
		'Vaša privatnost je važna - uživajte u potpunoj offline funkcionalnosti, čuvajući svoje podatke sigurnim.',
		'Nikada ne propustite važan trenutak - postavite podsetnike za posebne događaje i prilike.',
	];
	@override String get startButton => 'Započni beleženje!';
}

// Path: homeScreen
class _StringsHomeScreenSrLatn implements _StringsHomeScreenEn {
	_StringsHomeScreenSrLatn._(this._root);

	@override final _StringsSrLatn _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'Dobrodošli!';
	@override String get no_notes_title => 'Nema beležaka!';
	@override String get no_notes_subtitle => 'Počnite dodavanjem memoara o prijatelju.';
	@override String get add_note => 'Dodaj belešku';
	@override String get pinned => 'Prikačene';
	@override String get other => 'Ostalo';
	@override String get search => 'Pretraga';
	@override String get pin_note => 'Prikvači belešku';
	@override String get unpin_note => 'Otkvači belešku';
}

// Path: newNoteScreen
class _StringsNewNoteScreenSrLatn implements _StringsNewNoteScreenEn {
	_StringsNewNoteScreenSrLatn._(this._root);

	@override final _StringsSrLatn _root; // ignore: unused_field

	// Translations
	@override String get friend_name_hint => 'Ime';
	@override String get fields_missing_error => 'Izvinjavamo se! Neka polja nedostaju!';
	@override String get overview => 'Pregled';
	@override String get gift_ideas => 'Ideje za poklone';
	@override String get gift_ideas_hint => 'Šta bi ova osoba volela kao poklon?';
	@override String get reminders => 'Podsetnici';
	@override String get category => 'Kategorija';
	@override List<String> get categories => [
		'Prijatelj 😄',
		'Posao 💼',
		'Porodica 🏠',
		'Škola 🎒',
		'Partner ❤️‍🔥',
	];
	@override String get date_of_birth => 'Datum rođenja';
	@override String get description => 'Opis';
	@override String get description_hint => 'Dodajte bilo koje beleške ovde...';
	@override String get coming_soon => 'Uskoro';
	@override String get some_fields_are_missing => 'Neka polja nedostaju!';
	@override String get note_saved => 'Beleška uspešno sačuvana!';
	@override String get archive_note => 'Arhiviraj belešku';
	@override String archive_note_are_you_sure({required Object name}) => 'Da li ste sigurni da želite da arhivirate belešku za \'${name}?\'';
	@override String get note_achived => 'Beleška arhivirana!';
	@override String get select_image => 'Izaberi sliku';
	@override String get remove_image => 'Ukloni sliku';
	@override String get randomize_illusrtation => 'Nasuična ilustracija';
	@override String get unsaved_changes => 'Nesačuvane izmene';
	@override String get save_changes_description => 'Da li želite da sačuvate vaše izmene?';
	@override String get save => 'Sačuvaj';
	@override String get discard => 'Odbaci';
	@override String get add_reminder => 'Dodaj podsetnik';
	@override String get annual => 'Godišnji';
	@override String get this_reminder_will_be_repeated_every_year => 'Podsetnik će biti ponovljen svake godine';
	@override String get name => 'Naziv';
	@override String get date => 'Datum';
	@override String get time => 'Vreme';
	@override String get reminder_deleted => 'Podsetnik obrisan!';
	@override String get no_reminders => 'Nema podsetnika';
	@override String get reminder_created => 'Podsetnik kreiran!';
}

// Path: archivedNotes
class _StringsArchivedNotesSrLatn implements _StringsArchivedNotesEn {
	_StringsArchivedNotesSrLatn._(this._root);

	@override final _StringsSrLatn _root; // ignore: unused_field

	// Translations
	@override String get no_archived_notes => 'Nema arhiviranih beležaka!';
	@override String get no_archived_notes_subtitle => 'Vaše obrisane beleške će se pojaviti ovde.';
	@override String get delete_all_notes_forever_dialog_title => 'Obriši sve beleške zauvek';
	@override String get delete_all_notes_forever_dialog_subtitle => 'Ova radnja se ne može poništiti. Vaša arhiva će biti ispražnjena.';
	@override String get delete_note_forever_dialog_title => 'Obriši belešku zauvek';
	@override String get delete_note_forever_dialog_subtitle => 'Ova radnja se ne može poništiti. Vaša beleška će biti obrisana zauvek.';
	@override String get restore => 'Vrati';
	@override String get delete_forever => 'Obriši zauvek';
	@override String get note_deleted => 'Beleška obrisana!';
	@override String get note_restored => 'Beleška vraćena!';
}

// Path: settingsScreen
class _StringsSettingsScreenSrLatn implements _StringsSettingsScreenEn {
	_StringsSettingsScreenSrLatn._(this._root);

	@override final _StringsSrLatn _root; // ignore: unused_field

	// Translations
	@override String app_name_and_version({required Object version}) => 'Inscribe, v${version}';
	@override String get theme => 'Tema';
	@override String get dark => 'Tamna tema';
	@override String get light => 'Svetla tema';
	@override String get language => 'Jezik';
	@override String get english => 'Engleski';
	@override String get serbian => 'Srpski';
	@override String get notes_view => 'Pregled beleški';
	@override String get grid_view => 'Mrežni prikaz';
	@override String get list_view => 'Lista prikaz';
	@override String get use_dark_theme => 'Koristi tamnu temu';
	@override String get dark_theme_description => 'Smanjenje naprezanja očiju i ušteda baterije';
	@override String get use_grid_view => 'Koristi tabelarni prikaz';
	@override String get grid_view_description => 'Kartice zauzimaju manje prostora';
	@override String get visual => 'Vizuali';
	@override String get system => 'Sistem';
	@override String get change_theme => 'Promeni temu';
	@override String get apply_change => 'Primeni promenu?';
	@override String get this_action_will_restart_the_app => 'Ova akcija će restartovati aplikaciju';
}

// Path: calendarScreen
class _StringsCalendarScreenSrLatn implements _StringsCalendarScreenEn {
	_StringsCalendarScreenSrLatn._(this._root);

	@override final _StringsSrLatn _root; // ignore: unused_field

	// Translations
	@override String get birthday => 'Rođendan';
	@override String get annualEvent => 'Godišnji događaj';
	@override String get oneTimeReminder => 'Jednokratni podsetnik';
}

// Path: <root>
class _StringsTr implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsTr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.tr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsTr _root = this; // ignore: unused_field

	// Translations
	@override String get appName => 'Inscribe';
	@override String get cancel => 'İptal';
	@override String get confirm => 'Onayla';
	@override String get undo => 'Geri al';
	@override String get edit => 'Düzenle';
	@override String get delete => 'Sil';
	@override late final _StringsErrorMessagesTr errorMessages = _StringsErrorMessagesTr._(_root);
	@override late final _StringsDrawerTr drawer = _StringsDrawerTr._(_root);
	@override late final _StringsImportExportTr importExport = _StringsImportExportTr._(_root);
	@override late final _StringsWelcomeScreenTr welcomeScreen = _StringsWelcomeScreenTr._(_root);
	@override late final _StringsHomeScreenTr homeScreen = _StringsHomeScreenTr._(_root);
	@override late final _StringsNewNoteScreenTr newNoteScreen = _StringsNewNoteScreenTr._(_root);
	@override late final _StringsArchivedNotesTr archivedNotes = _StringsArchivedNotesTr._(_root);
	@override late final _StringsSettingsScreenTr settingsScreen = _StringsSettingsScreenTr._(_root);
	@override late final _StringsCalendarScreenTr calendarScreen = _StringsCalendarScreenTr._(_root);
}

// Path: errorMessages
class _StringsErrorMessagesTr implements _StringsErrorMessagesEn {
	_StringsErrorMessagesTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get mandatory_field => 'Bu alan zorunludur.';
}

// Path: drawer
class _StringsDrawerTr implements _StringsDrawerEn {
	_StringsDrawerTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get memoirs => 'Anılar';
	@override String get archive => 'Arşiv';
	@override String get settings => 'Ayarlar';
	@override String get calendar => 'Takvim';
	@override String get export => 'Dışa aktar';
	@override String get import => 'İçe aktar';
	@override String get debug_notifications => '[DEBUG] Bildirimler';
}

// Path: importExport
class _StringsImportExportTr implements _StringsImportExportEn {
	_StringsImportExportTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get fileDownloaded => 'Veriler dosya sisteminize kaydedildi.';
	@override String get dataHasBeenImported => 'Dosyadan veri içe aktarıldı.';
	@override String get error => 'Dosyadan veri içe aktarılırken bir hata oluştu.';
}

// Path: welcomeScreen
class _StringsWelcomeScreenTr implements _StringsWelcomeScreenEn {
	_StringsWelcomeScreenTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inscribe\'a Hoş Geldiniz!';
	@override List<String> get slides => [
		'Arkadaşlıkları, beğeniler, doğum günleri ve hediye fikirlerine dair kişiselleştirilmiş notlarla kutlayın.',
		'Her arkadaşınız için özenli hediye listeleri hazırlayın ve her etkinliği unutulmaz kılın.',
		'Arkadaşlıklarınızı her yere taşıyın - verilerinizi kolayca indirin ve aktarın.',
		'Gizliliğiniz önemlidir - verilerinizi güvende tutarak tam çevrimdışı işlevselliğin keyfini çıkarın.',
		'Hiçbir anı kaçırmayın - özel etkinlikler ve olaylar için hatırlatıcılar kurun.',
	];
	@override String get startButton => 'Not almaya başla!';
}

// Path: homeScreen
class _StringsHomeScreenTr implements _StringsHomeScreenEn {
	_StringsHomeScreenTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'Hoş geldiniz!';
	@override String get no_notes_title => 'Not bulunamadı!';
	@override String get no_notes_subtitle => 'Bir arkadaş anısı ekleyerek başlayın.';
	@override String get add_note => 'Not ekle';
	@override String get pinned => 'Sabitlenmiş';
	@override String get other => 'Diğer';
	@override String get search => 'Ara';
	@override String get pin_note => 'Notu sabitle';
	@override String get unpin_note => 'Notu sabitlemeden çıkar';
}

// Path: newNoteScreen
class _StringsNewNoteScreenTr implements _StringsNewNoteScreenEn {
	_StringsNewNoteScreenTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get friend_name_hint => 'Adı nedir?';
	@override String get fields_missing_error => 'Üzgünüz! Bazı alanlar eksik!';
	@override String get overview => 'Genel Bakış';
	@override String get gift_ideas => 'Hediye fikirleri';
	@override String get gift_ideas_hint => 'Bu kişi neyi hediye olarak sever?';
	@override String get reminders => 'Hatırlatıcılar';
	@override String get category => 'Kategori';
	@override List<String> get categories => [
		'Arkadaş 😄',
		'İş 💼',
		'Aile 🏠',
		'Okul 🎒',
		'Romantik ❤️‍🔥',
	];
	@override String get date_of_birth => 'Doğum tarihi';
	@override String get description => 'Açıklama';
	@override String get description_hint => 'Buraya istediğiniz notları ekleyin...';
	@override String get coming_soon => 'Yakında geliyor';
	@override String get some_fields_are_missing => 'Bazı alanlar eksik!';
	@override String get note_saved => 'Not başarıyla kaydedildi!';
	@override String get archive_note => 'Notu arşivle';
	@override String archive_note_are_you_sure({required Object name}) => 'Bu notu \'${name}\' arşivlemek istediğinize emin misiniz?';
	@override String get note_achived => 'Not arşivlendi!';
	@override String get select_image => 'Resim seç';
	@override String get remove_image => 'Resmi kaldır';
	@override String get randomize_illusrtation => 'İllüstrasyonu rastgele seç';
	@override String get unsaved_changes => 'Kaydedilmemiş değişiklikler';
	@override String get save_changes_description => 'Değişiklikleri kaydetmek istiyor musunuz?';
	@override String get save => 'Kaydet';
	@override String get discard => 'Vazgeç';
	@override String get add_reminder => 'Hatırlatıcı ekle';
	@override String get annual => 'Yıllık';
	@override String get this_reminder_will_be_repeated_every_year => 'Bu hatırlatıcı her yıl tekrarlanacak';
	@override String get name => 'Ad';
	@override String get date => 'Tarih';
	@override String get time => 'Saat';
	@override String get reminder_deleted => 'Hatırlatıcı silindi!';
	@override String get no_reminders => 'Hatırlatıcı yok';
	@override String get reminder_created => 'Hatırlatıcı oluşturuldu!';
}

// Path: archivedNotes
class _StringsArchivedNotesTr implements _StringsArchivedNotesEn {
	_StringsArchivedNotesTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get no_archived_notes => 'Arşivlenmiş not yok!';
	@override String get no_archived_notes_subtitle => 'Silinen notlarınız burada görünecek.';
	@override String get delete_all_notes_forever_dialog_title => 'Tüm notları sonsuza kadar sil';
	@override String get delete_all_notes_forever_dialog_subtitle => 'Bu işlem geri alınamaz. Arşiv boşaltılacak.';
	@override String get delete_note_forever_dialog_title => 'Notu sonsuza kadar sil';
	@override String get delete_note_forever_dialog_subtitle => 'Bu işlem geri alınamaz. Notunuz kalıcı olarak silinecek.';
	@override String get restore => 'Geri yükle';
	@override String get delete_forever => 'Sonsuza kadar sil';
	@override String get note_deleted => 'Not silindi!';
	@override String get note_restored => 'Not geri yüklendi!';
}

// Path: settingsScreen
class _StringsSettingsScreenTr implements _StringsSettingsScreenEn {
	_StringsSettingsScreenTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String app_name_and_version({required Object version}) => 'Inscribe, v${version}';
	@override String get theme => 'Tema';
	@override String get dark => 'Koyu tema';
	@override String get light => 'Açık tema';
	@override String get language => 'Dil';
	@override String get english => 'İngilizce';
	@override String get serbian => 'Sırpça';
	@override String get notes_view => 'Not görünümü';
	@override String get grid_view => 'Izgara görünümü';
	@override String get list_view => 'Liste görünümü';
	@override String get use_dark_theme => 'Koyu temayı kullan';
	@override String get dark_theme_description => 'Göz yorgunluğunu azaltın ve pil tasarrufu yapın';
	@override String get use_grid_view => 'Izgara görünümünü kullan';
	@override String get grid_view_description => 'Kartlar ızgara görünümünde daha az yer kaplar';
	@override String get visual => 'Görsel';
	@override String get system => 'Sistem';
	@override String get change_theme => 'Temayı değiştir';
	@override String get apply_change => 'Değişiklik uygulansın mı?';
	@override String get this_action_will_restart_the_app => 'Bu işlem uygulamayı yeniden başlatacak';
}

// Path: calendarScreen
class _StringsCalendarScreenTr implements _StringsCalendarScreenEn {
	_StringsCalendarScreenTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get birthday => 'Doğum günü';
	@override String get annualEvent => 'Yıllık etkinlik';
	@override String get oneTimeReminder => 'Tek seferlik hatırlatıcı';
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
			case 'edit': return 'Edit';
			case 'delete': return 'Delete';
			case 'errorMessages.mandatory_field': return 'This field is mandatory.';
			case 'drawer.memoirs': return 'Memoirs';
			case 'drawer.archive': return 'Archive';
			case 'drawer.settings': return 'Settings';
			case 'drawer.calendar': return 'Calendar';
			case 'drawer.export': return 'Export';
			case 'drawer.import': return 'Import';
			case 'drawer.debug_notifications': return '[DEBUG] Notifications';
			case 'importExport.fileDownloaded': return 'The data has been saved on your file system.';
			case 'importExport.dataHasBeenImported': return 'Data from file has been imported.';
			case 'importExport.error': return 'An error occurred while importing data from file.';
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
			case 'homeScreen.pin_note': return 'Pin note';
			case 'homeScreen.unpin_note': return 'Unpin note';
			case 'newNoteScreen.friend_name_hint': return 'Their name';
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
			case 'newNoteScreen.select_image': return 'Select image';
			case 'newNoteScreen.remove_image': return 'Remove image';
			case 'newNoteScreen.randomize_illusrtation': return 'Randomize illustration';
			case 'newNoteScreen.unsaved_changes': return 'Unsaved changes';
			case 'newNoteScreen.save_changes_description': return 'Do you wish to save your changes?';
			case 'newNoteScreen.save': return 'Save';
			case 'newNoteScreen.discard': return 'Discard';
			case 'newNoteScreen.add_reminder': return 'Add reminder';
			case 'newNoteScreen.annual': return 'Annual';
			case 'newNoteScreen.this_reminder_will_be_repeated_every_year': return 'This reminder will be repeated every year';
			case 'newNoteScreen.name': return 'Name';
			case 'newNoteScreen.date': return 'Date';
			case 'newNoteScreen.time': return 'Time';
			case 'newNoteScreen.reminder_deleted': return 'Reminder deleted!';
			case 'newNoteScreen.no_reminders': return 'No reminders';
			case 'newNoteScreen.reminder_created': return 'Reminder created!';
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
			case 'settingsScreen.app_name_and_version': return ({required Object version}) => 'Inscribe, v${version}';
			case 'settingsScreen.theme': return 'Theme';
			case 'settingsScreen.dark': return 'Dark theme';
			case 'settingsScreen.light': return 'Light theme';
			case 'settingsScreen.language': return 'Language';
			case 'settingsScreen.english': return 'English';
			case 'settingsScreen.serbian': return 'Serbian';
			case 'settingsScreen.notes_view': return 'Notes view';
			case 'settingsScreen.grid_view': return 'Grid view';
			case 'settingsScreen.list_view': return 'List view';
			case 'settingsScreen.use_dark_theme': return 'Use dark theme';
			case 'settingsScreen.dark_theme_description': return 'Reduce eye strain and save battery';
			case 'settingsScreen.use_grid_view': return 'Use grid view';
			case 'settingsScreen.grid_view_description': return 'Cards take up less space in a grid view';
			case 'settingsScreen.visual': return 'Visual';
			case 'settingsScreen.system': return 'System';
			case 'settingsScreen.change_theme': return 'Change theme';
			case 'settingsScreen.apply_change': return 'Apply change?';
			case 'settingsScreen.this_action_will_restart_the_app': return 'This action will restart the app';
			case 'calendarScreen.birthday': return 'Birthday';
			case 'calendarScreen.annualEvent': return 'Annual event';
			case 'calendarScreen.oneTimeReminder': return 'One time reminder';
			default: return null;
		}
	}
}

extension on _StringsDe {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appName': return 'Inscribe';
			case 'cancel': return 'Abbrechen';
			case 'confirm': return 'Bestätigen';
			case 'undo': return 'Rückgängig machen';
			case 'edit': return 'Bearbeiten';
			case 'delete': return 'Löschen';
			case 'errorMessages.mandatory_field': return 'Dieses Feld ist erforderlich.';
			case 'drawer.memoirs': return 'Erinnerungen';
			case 'drawer.archive': return 'Archiv';
			case 'drawer.settings': return 'Einstellungen';
			case 'drawer.calendar': return 'Kalender';
			case 'drawer.export': return 'Exportieren';
			case 'drawer.import': return 'Importieren';
			case 'drawer.debug_notifications': return '[DEBUG] Benachrichtigungen';
			case 'importExport.fileDownloaded': return 'Die Daten wurden auf Ihr Dateisystem gespeichert.';
			case 'importExport.dataHasBeenImported': return 'Daten aus der Datei wurden importiert.';
			case 'importExport.error': return 'Es ist ein Fehler beim Importieren der Daten aus der Datei aufgetreten.';
			case 'welcomeScreen.title': return 'Willkommen bei Inscribe!';
			case 'welcomeScreen.slides.0': return 'Feiern Sie Freundschaften mit personalisierten Notizen zu Vorlieben, Geburtstagen und Geschenkideen.';
			case 'welcomeScreen.slides.1': return 'Erstellen Sie durchdachte Geschenkelisten für jeden Freund und machen Sie jeden Anlass unvergesslich.';
			case 'welcomeScreen.slides.2': return 'Nehmen Sie Ihre Freundschaften überallhin mit - laden Sie Ihre Daten ganz einfach herunter und übertragen Sie sie.';
			case 'welcomeScreen.slides.3': return 'Ihre Privatsphäre ist wichtig - genießen Sie die volle Offline-Funktionalität und halten Sie Ihre Daten sicher.';
			case 'welcomeScreen.slides.4': return 'Verpassen Sie nichts - richten Sie Erinnerungen für besondere Anlässe und Ereignisse ein.';
			case 'welcomeScreen.startButton': return 'Notizen erstellen!';
			case 'homeScreen.welcome': return 'Willkommen!';
			case 'homeScreen.no_notes_title': return 'Keine Notizen gefunden!';
			case 'homeScreen.no_notes_subtitle': return 'Beginnen Sie mit dem Hinzufügen einer Freundesnotiz.';
			case 'homeScreen.add_note': return 'Notiz hinzufügen';
			case 'homeScreen.pinned': return 'Angeheftet';
			case 'homeScreen.other': return 'Andere';
			case 'homeScreen.search': return 'Suchen';
			case 'homeScreen.pin_note': return 'Notiz anheften';
			case 'homeScreen.unpin_note': return 'Notiz lösen';
			case 'newNoteScreen.friend_name_hint': return 'Wie heißt er/sie?';
			case 'newNoteScreen.fields_missing_error': return 'Entschuldigung! Einige Felder fehlen!';
			case 'newNoteScreen.overview': return 'Übersicht';
			case 'newNoteScreen.gift_ideas': return 'Geschenkideen';
			case 'newNoteScreen.gift_ideas_hint': return 'Was würde dieser Person als Geschenk gefallen?';
			case 'newNoteScreen.reminders': return 'Erinnerungen';
			case 'newNoteScreen.category': return 'Kategorie';
			case 'newNoteScreen.categories.0': return 'Freund 😄';
			case 'newNoteScreen.categories.1': return 'Arbeit 💼';
			case 'newNoteScreen.categories.2': return 'Familie 🏠';
			case 'newNoteScreen.categories.3': return 'Schule 🎒';
			case 'newNoteScreen.categories.4': return 'Romantisch ❤️‍🔥';
			case 'newNoteScreen.date_of_birth': return 'Geburtsdatum';
			case 'newNoteScreen.description': return 'Beschreibung';
			case 'newNoteScreen.description_hint': return 'Fügen Sie hier Ihre Notizen hinzu...';
			case 'newNoteScreen.coming_soon': return 'Bald verfügbar';
			case 'newNoteScreen.some_fields_are_missing': return 'Einige Felder fehlen!';
			case 'newNoteScreen.note_saved': return 'Notiz erfolgreich gespeichert!';
			case 'newNoteScreen.archive_note': return 'Notiz archivieren';
			case 'newNoteScreen.archive_note_are_you_sure': return ({required Object name}) => 'Möchten Sie die Notiz für \'${name}\' wirklich archivieren?';
			case 'newNoteScreen.note_achived': return 'Notiz archiviert!';
			case 'newNoteScreen.select_image': return 'Bild auswählen';
			case 'newNoteScreen.remove_image': return 'Bild entfernen';
			case 'newNoteScreen.randomize_illusrtation': return 'Illustration zufällig auswählen';
			case 'newNoteScreen.unsaved_changes': return 'Nicht gespeicherte Änderungen';
			case 'newNoteScreen.save_changes_description': return 'Möchten Sie Ihre Änderungen speichern?';
			case 'newNoteScreen.save': return 'Speichern';
			case 'newNoteScreen.discard': return 'Verwerfen';
			case 'newNoteScreen.add_reminder': return 'Erinnerung hinzufügen';
			case 'newNoteScreen.annual': return 'Jährlich';
			case 'newNoteScreen.this_reminder_will_be_repeated_every_year': return 'Diese Erinnerung wird jedes Jahr wiederholt';
			case 'newNoteScreen.name': return 'Name';
			case 'newNoteScreen.date': return 'Datum';
			case 'newNoteScreen.time': return 'Uhrzeit';
			case 'newNoteScreen.reminder_deleted': return 'Erinnerung gelöscht!';
			case 'newNoteScreen.no_reminders': return 'Keine Erinnerungen';
			case 'newNoteScreen.reminder_created': return 'Erinnerung erstellt!';
			case 'archivedNotes.no_archived_notes': return 'Keine archivierten Notizen!';
			case 'archivedNotes.no_archived_notes_subtitle': return 'Ihre gelöschten Notizen werden hier angezeigt.';
			case 'archivedNotes.delete_all_notes_forever_dialog_title': return 'Alle Notizen endgültig löschen';
			case 'archivedNotes.delete_all_notes_forever_dialog_subtitle': return 'Diese Aktion kann nicht rückgängig gemacht werden. Ihr Archiv wird geleert.';
			case 'archivedNotes.delete_note_forever_dialog_title': return 'Notiz endgültig löschen';
			case 'archivedNotes.delete_note_forever_dialog_subtitle': return 'Diese Aktion kann nicht rückgängig gemacht werden. Ihre Notiz wird endgültig gelöscht.';
			case 'archivedNotes.restore': return 'Wiederherstellen';
			case 'archivedNotes.delete_forever': return 'Endgültig löschen';
			case 'archivedNotes.note_deleted': return 'Notiz gelöscht!';
			case 'archivedNotes.note_restored': return 'Notiz wiederhergestellt!';
			case 'settingsScreen.app_name_and_version': return ({required Object version}) => 'Inscribe, v${version}';
			case 'settingsScreen.theme': return 'Thema';
			case 'settingsScreen.dark': return 'Dunkles Thema';
			case 'settingsScreen.light': return 'Helles Thema';
			case 'settingsScreen.language': return 'Sprache';
			case 'settingsScreen.english': return 'Englisch';
			case 'settingsScreen.serbian': return 'Serbisch';
			case 'settingsScreen.notes_view': return 'Notizansicht';
			case 'settingsScreen.grid_view': return 'Rasteransicht';
			case 'settingsScreen.list_view': return 'Listenansicht';
			case 'settingsScreen.use_dark_theme': return 'Dunkles Thema verwenden';
			case 'settingsScreen.dark_theme_description': return 'Reduziert die Augenbelastung und spart Batterie';
			case 'settingsScreen.use_grid_view': return 'Rasteransicht verwenden';
			case 'settingsScreen.grid_view_description': return 'Karten nehmen in der Rasteransicht weniger Platz ein';
			case 'settingsScreen.visual': return 'Visuell';
			case 'settingsScreen.system': return 'System';
			case 'settingsScreen.change_theme': return 'Thema ändern';
			case 'settingsScreen.apply_change': return 'Änderung anwenden?';
			case 'settingsScreen.this_action_will_restart_the_app': return 'Diese Aktion wird die App neu starten';
			case 'calendarScreen.birthday': return 'Geburtstag';
			case 'calendarScreen.annualEvent': return 'Jährliches Ereignis';
			case 'calendarScreen.oneTimeReminder': return 'Einmalige Erinnerung';
			default: return null;
		}
	}
}

extension on _StringsEs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appName': return 'Inscribe';
			case 'cancel': return 'Cancelar';
			case 'confirm': return 'Confirmar';
			case 'undo': return 'Deshacer';
			case 'edit': return 'Editar';
			case 'delete': return 'Eliminar';
			case 'errorMessages.mandatory_field': return 'Este campo es obligatorio.';
			case 'drawer.memoirs': return 'Memorias';
			case 'drawer.archive': return 'Archivo';
			case 'drawer.settings': return 'Configuración';
			case 'drawer.calendar': return 'Calendario';
			case 'drawer.export': return 'Exportar';
			case 'drawer.import': return 'Importar';
			case 'drawer.debug_notifications': return '[DEBUG] Notificaciones';
			case 'importExport.fileDownloaded': return 'Los datos se han guardado en su sistema de archivos.';
			case 'importExport.dataHasBeenImported': return 'Los datos del archivo se han importado.';
			case 'importExport.error': return 'Se produjo un error al importar los datos del archivo.';
			case 'welcomeScreen.title': return '¡Bienvenido a Inscribe!';
			case 'welcomeScreen.slides.0': return 'Celebra las amistades con notas personalizadas sobre gustos, cumpleaños e ideas de regalos.';
			case 'welcomeScreen.slides.1': return 'Crea listas de regalos pensadas para cada amigo, haciendo que cada ocasión sea memorable.';
			case 'welcomeScreen.slides.2': return 'Lleva tus amistades a donde quieras: descarga y transfiere tus datos fácilmente.';
			case 'welcomeScreen.slides.3': return 'Tu privacidad es importante: disfruta de la funcionalidad totalmente offline, manteniendo tus datos seguros.';
			case 'welcomeScreen.slides.4': return 'No te pierdas nada: establece recordatorios para ocasiones especiales y eventos.';
			case 'welcomeScreen.startButton': return '¡Comienza a anotar!';
			case 'homeScreen.welcome': return '¡Bienvenido!';
			case 'homeScreen.no_notes_title': return '¡No se encontraron notas!';
			case 'homeScreen.no_notes_subtitle': return 'Comienza agregando una memoria de un amigo.';
			case 'homeScreen.add_note': return 'Agregar nota';
			case 'homeScreen.pinned': return 'Fijado';
			case 'homeScreen.other': return 'Otro';
			case 'homeScreen.search': return 'Buscar';
			case 'homeScreen.pin_note': return 'Fijar nota';
			case 'homeScreen.unpin_note': return 'Desfijar nota';
			case 'newNoteScreen.friend_name_hint': return '¿Cómo se llama?';
			case 'newNoteScreen.fields_missing_error': return '¡Lo siento! Faltan algunos campos.';
			case 'newNoteScreen.overview': return 'Visión general';
			case 'newNoteScreen.gift_ideas': return 'Ideas de regalo';
			case 'newNoteScreen.gift_ideas_hint': return '¿Qué le gustaría recibir como regalo?';
			case 'newNoteScreen.reminders': return 'Recordatorios';
			case 'newNoteScreen.category': return 'Categoría';
			case 'newNoteScreen.categories.0': return 'Amigo 😄';
			case 'newNoteScreen.categories.1': return 'Trabajo 💼';
			case 'newNoteScreen.categories.2': return 'Familia 🏠';
			case 'newNoteScreen.categories.3': return 'Escuela 🎒';
			case 'newNoteScreen.categories.4': return 'Romántico ❤️‍🔥';
			case 'newNoteScreen.date_of_birth': return 'Fecha de nacimiento';
			case 'newNoteScreen.description': return 'Descripción';
			case 'newNoteScreen.description_hint': return 'Añade aquí las notas que desees...';
			case 'newNoteScreen.coming_soon': return 'Próximamente';
			case 'newNoteScreen.some_fields_are_missing': return '¡Faltan algunos campos!';
			case 'newNoteScreen.note_saved': return '¡Nota guardada con éxito!';
			case 'newNoteScreen.archive_note': return 'Archivar nota';
			case 'newNoteScreen.archive_note_are_you_sure': return ({required Object name}) => '¿Estás seguro de que deseas archivar la nota para \'${name}\'?';
			case 'newNoteScreen.note_achived': return '¡Nota archivada!';
			case 'newNoteScreen.select_image': return 'Seleccionar imagen';
			case 'newNoteScreen.remove_image': return 'Eliminar imagen';
			case 'newNoteScreen.randomize_illusrtation': return 'Aleatorizar ilustración';
			case 'newNoteScreen.unsaved_changes': return 'Cambios no guardados';
			case 'newNoteScreen.save_changes_description': return '¿Deseas guardar tus cambios?';
			case 'newNoteScreen.save': return 'Guardar';
			case 'newNoteScreen.discard': return 'Descartar';
			case 'newNoteScreen.add_reminder': return 'Agregar recordatorio';
			case 'newNoteScreen.annual': return 'Anual';
			case 'newNoteScreen.this_reminder_will_be_repeated_every_year': return 'Este recordatorio se repetirá todos los años';
			case 'newNoteScreen.name': return 'Nombre';
			case 'newNoteScreen.date': return 'Fecha';
			case 'newNoteScreen.time': return 'Hora';
			case 'newNoteScreen.reminder_deleted': return '¡Recordatorio eliminado!';
			case 'newNoteScreen.no_reminders': return 'Sin recordatorios';
			case 'newNoteScreen.reminder_created': return '¡Recordatorio creado!';
			case 'archivedNotes.no_archived_notes': return '¡No hay notas archivadas!';
			case 'archivedNotes.no_archived_notes_subtitle': return 'Tus notas eliminadas aparecerán aquí.';
			case 'archivedNotes.delete_all_notes_forever_dialog_title': return 'Eliminar todas las notas para siempre';
			case 'archivedNotes.delete_all_notes_forever_dialog_subtitle': return 'Esta acción no se puede deshacer. Tu archivo se vaciará.';
			case 'archivedNotes.delete_note_forever_dialog_title': return 'Eliminar nota para siempre';
			case 'archivedNotes.delete_note_forever_dialog_subtitle': return 'Esta acción no se puede deshacer. Tu nota se eliminará para siempre.';
			case 'archivedNotes.restore': return 'Restaurar';
			case 'archivedNotes.delete_forever': return 'Eliminar para siempre';
			case 'archivedNotes.note_deleted': return '¡Nota eliminada!';
			case 'archivedNotes.note_restored': return '¡Nota restaurada!';
			case 'settingsScreen.app_name_and_version': return ({required Object version}) => 'Inscribe, v${version}';
			case 'settingsScreen.theme': return 'Tema';
			case 'settingsScreen.dark': return 'Tema oscuro';
			case 'settingsScreen.light': return 'Tema claro';
			case 'settingsScreen.language': return 'Idioma';
			case 'settingsScreen.english': return 'Inglés';
			case 'settingsScreen.serbian': return 'Serbio';
			case 'settingsScreen.notes_view': return 'Vista de notas';
			case 'settingsScreen.grid_view': return 'Vista de cuadrícula';
			case 'settingsScreen.list_view': return 'Vista de lista';
			case 'settingsScreen.use_dark_theme': return 'Usar tema oscuro';
			case 'settingsScreen.dark_theme_description': return 'Reduce el esfuerzo visual y ahorra batería';
			case 'settingsScreen.use_grid_view': return 'Usar vista de cuadrícula';
			case 'settingsScreen.grid_view_description': return 'Las tarjetas ocupan menos espacio en la vista de cuadrícula';
			case 'settingsScreen.visual': return 'Visual';
			case 'settingsScreen.system': return 'Sistema';
			case 'settingsScreen.change_theme': return 'Cambiar tema';
			case 'settingsScreen.apply_change': return '¿Aplicar cambio?';
			case 'settingsScreen.this_action_will_restart_the_app': return 'Esta acción reiniciará la aplicación';
			case 'calendarScreen.birthday': return 'Cumpleaños';
			case 'calendarScreen.annualEvent': return 'Evento anual';
			case 'calendarScreen.oneTimeReminder': return 'Recordatorio único';
			default: return null;
		}
	}
}

extension on _StringsFr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appName': return 'Inscribe';
			case 'cancel': return 'Annuler';
			case 'confirm': return 'Confirmer';
			case 'undo': return 'Annuler';
			case 'edit': return 'Éditer';
			case 'delete': return 'Supprimer';
			case 'errorMessages.mandatory_field': return 'Ce champ est obligatoire.';
			case 'drawer.memoirs': return 'Mémoires';
			case 'drawer.archive': return 'Archive';
			case 'drawer.settings': return 'Paramètres';
			case 'drawer.calendar': return 'Calendrier';
			case 'drawer.export': return 'Exporter';
			case 'drawer.import': return 'Importer';
			case 'drawer.debug_notifications': return '[DEBUG] Notifications';
			case 'importExport.fileDownloaded': return 'Les données ont été enregistrées sur votre système de fichiers.';
			case 'importExport.dataHasBeenImported': return 'Les données du fichier ont été importées.';
			case 'importExport.error': return 'Une erreur est survenue lors de l\'importation des données du fichier.';
			case 'welcomeScreen.title': return 'Bienvenue sur Inscribe !';
			case 'welcomeScreen.slides.0': return 'Célébrez les amitiés avec des notes personnalisées sur les goûts, les anniversaires et les idées de cadeaux.';
			case 'welcomeScreen.slides.1': return 'Créez des listes de cadeaux réfléchies pour chaque ami, rendant chaque occasion mémorable.';
			case 'welcomeScreen.slides.2': return 'Emportez vos amitiés partout - téléchargez et transférez facilement vos données.';
			case 'welcomeScreen.slides.3': return 'Votre vie privée compte - profitez d\'une fonctionnalité entièrement hors ligne, en gardant vos données sécurisées.';
			case 'welcomeScreen.slides.4': return 'Ne ratez jamais un événement - définissez des rappels pour les occasions spéciales et événements.';
			case 'welcomeScreen.startButton': return 'Commencez à noter !';
			case 'homeScreen.welcome': return 'Bienvenue !';
			case 'homeScreen.no_notes_title': return 'Aucune note trouvée !';
			case 'homeScreen.no_notes_subtitle': return 'Commencez par ajouter une mémoire d\'ami.';
			case 'homeScreen.add_note': return 'Ajouter une note';
			case 'homeScreen.pinned': return 'Épinglé';
			case 'homeScreen.other': return 'Autre';
			case 'homeScreen.search': return 'Rechercher';
			case 'homeScreen.pin_note': return 'Épingler la note';
			case 'homeScreen.unpin_note': return 'Détacher la note';
			case 'newNoteScreen.friend_name_hint': return 'Comment s\'appelle-t-il/elle ?';
			case 'newNoteScreen.fields_missing_error': return 'Désolé ! Certains champs sont manquants !';
			case 'newNoteScreen.overview': return 'Aperçu';
			case 'newNoteScreen.gift_ideas': return 'Idées de cadeaux';
			case 'newNoteScreen.gift_ideas_hint': return 'Que voudrait recevoir cette personne en cadeau ?';
			case 'newNoteScreen.reminders': return 'Rappels';
			case 'newNoteScreen.category': return 'Catégorie';
			case 'newNoteScreen.categories.0': return 'Ami 😄';
			case 'newNoteScreen.categories.1': return 'Travail 💼';
			case 'newNoteScreen.categories.2': return 'Famille 🏠';
			case 'newNoteScreen.categories.3': return 'École 🎒';
			case 'newNoteScreen.categories.4': return 'Romantique ❤️‍🔥';
			case 'newNoteScreen.date_of_birth': return 'Date de naissance';
			case 'newNoteScreen.description': return 'Description';
			case 'newNoteScreen.description_hint': return 'Ajoutez vos notes ici...';
			case 'newNoteScreen.coming_soon': return 'Bientôt disponible';
			case 'newNoteScreen.some_fields_are_missing': return 'Certains champs sont manquants !';
			case 'newNoteScreen.note_saved': return 'Note enregistrée avec succès !';
			case 'newNoteScreen.archive_note': return 'Archiver la note';
			case 'newNoteScreen.archive_note_are_you_sure': return ({required Object name}) => 'Êtes-vous sûr de vouloir archiver la note pour \'${name}\' ?';
			case 'newNoteScreen.note_achived': return 'Note archivée !';
			case 'newNoteScreen.select_image': return 'Sélectionner une image';
			case 'newNoteScreen.remove_image': return 'Supprimer l\'image';
			case 'newNoteScreen.randomize_illusrtation': return 'Illustration aléatoire';
			case 'newNoteScreen.unsaved_changes': return 'Modifications non enregistrées';
			case 'newNoteScreen.save_changes_description': return 'Souhaitez-vous enregistrer vos modifications ?';
			case 'newNoteScreen.save': return 'Enregistrer';
			case 'newNoteScreen.discard': return 'Annuler';
			case 'newNoteScreen.add_reminder': return 'Ajouter un rappel';
			case 'newNoteScreen.annual': return 'Annuel';
			case 'newNoteScreen.this_reminder_will_be_repeated_every_year': return 'Ce rappel sera répété chaque année';
			case 'newNoteScreen.name': return 'Nom';
			case 'newNoteScreen.date': return 'Date';
			case 'newNoteScreen.time': return 'Heure';
			case 'newNoteScreen.reminder_deleted': return 'Rappel supprimé !';
			case 'newNoteScreen.no_reminders': return 'Aucun rappel';
			case 'newNoteScreen.reminder_created': return 'Rappel créé !';
			case 'archivedNotes.no_archived_notes': return 'Aucune note archivée !';
			case 'archivedNotes.no_archived_notes_subtitle': return 'Vos notes supprimées apparaîtront ici.';
			case 'archivedNotes.delete_all_notes_forever_dialog_title': return 'Supprimer toutes les notes définitivement';
			case 'archivedNotes.delete_all_notes_forever_dialog_subtitle': return 'Cette action est irréversible. Votre archive sera vidée.';
			case 'archivedNotes.delete_note_forever_dialog_title': return 'Supprimer la note définitivement';
			case 'archivedNotes.delete_note_forever_dialog_subtitle': return 'Cette action est irréversible. Votre note sera supprimée définitivement.';
			case 'archivedNotes.restore': return 'Restaurer';
			case 'archivedNotes.delete_forever': return 'Supprimer définitivement';
			case 'archivedNotes.note_deleted': return 'Note supprimée !';
			case 'archivedNotes.note_restored': return 'Note restaurée !';
			case 'settingsScreen.app_name_and_version': return ({required Object version}) => 'Inscribe, v${version}';
			case 'settingsScreen.theme': return 'Thème';
			case 'settingsScreen.dark': return 'Thème sombre';
			case 'settingsScreen.light': return 'Thème clair';
			case 'settingsScreen.language': return 'Langue';
			case 'settingsScreen.english': return 'Anglais';
			case 'settingsScreen.serbian': return 'Serbe';
			case 'settingsScreen.notes_view': return 'Affichage des notes';
			case 'settingsScreen.grid_view': return 'Vue en grille';
			case 'settingsScreen.list_view': return 'Vue en liste';
			case 'settingsScreen.use_dark_theme': return 'Utiliser le thème sombre';
			case 'settingsScreen.dark_theme_description': return 'Réduisez la fatigue oculaire et économisez la batterie';
			case 'settingsScreen.use_grid_view': return 'Utiliser la vue en grille';
			case 'settingsScreen.grid_view_description': return 'Les cartes prennent moins de place en vue grille';
			case 'settingsScreen.visual': return 'Visuel';
			case 'settingsScreen.system': return 'Système';
			case 'settingsScreen.change_theme': return 'Changer de thème';
			case 'settingsScreen.apply_change': return 'Appliquer le changement ?';
			case 'settingsScreen.this_action_will_restart_the_app': return 'Cette action redémarrera l\'application';
			case 'calendarScreen.birthday': return 'Anniversaire';
			case 'calendarScreen.annualEvent': return 'Événement annuel';
			case 'calendarScreen.oneTimeReminder': return 'Rappel unique';
			default: return null;
		}
	}
}

extension on _StringsIt {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appName': return 'Inscribe';
			case 'cancel': return 'Annulla';
			case 'confirm': return 'Conferma';
			case 'undo': return 'Annulla';
			case 'edit': return 'Modifica';
			case 'delete': return 'Elimina';
			case 'errorMessages.mandatory_field': return 'Questo campo è obbligatorio.';
			case 'drawer.memoirs': return 'Memorie';
			case 'drawer.archive': return 'Archivio';
			case 'drawer.settings': return 'Impostazioni';
			case 'drawer.calendar': return 'Calendario';
			case 'drawer.export': return 'Esporta';
			case 'drawer.import': return 'Importa';
			case 'drawer.debug_notifications': return '[DEBUG] Notifiche';
			case 'importExport.fileDownloaded': return 'I dati sono stati salvati sul tuo file system.';
			case 'importExport.dataHasBeenImported': return 'I dati dal file sono stati importati.';
			case 'importExport.error': return 'Si è verificato un errore durante l\'importazione dei dati dal file.';
			case 'welcomeScreen.title': return 'Benvenuto su Inscribe!';
			case 'welcomeScreen.slides.0': return 'Celebra le amicizie con note personalizzate sui gusti, compleanni e idee regalo.';
			case 'welcomeScreen.slides.1': return 'Crea liste di regali per ogni amico, rendendo ogni occasione memorabile.';
			case 'welcomeScreen.slides.2': return 'Porta le tue amicizie ovunque - scarica e trasferisci facilmente i tuoi dati.';
			case 'welcomeScreen.slides.3': return 'La tua privacy è importante - goditi la piena funzionalità offline, mantenendo i tuoi dati al sicuro.';
			case 'welcomeScreen.slides.4': return 'Non perdere un colpo - imposta promemoria per occasioni speciali ed eventi.';
			case 'welcomeScreen.startButton': return 'Inizia a prendere appunti!';
			case 'homeScreen.welcome': return 'Benvenuto!';
			case 'homeScreen.no_notes_title': return 'Nessuna nota trovata!';
			case 'homeScreen.no_notes_subtitle': return 'Inizia aggiungendo una memoria di un amico.';
			case 'homeScreen.add_note': return 'Aggiungi nota';
			case 'homeScreen.pinned': return 'In evidenza';
			case 'homeScreen.other': return 'Altro';
			case 'homeScreen.search': return 'Cerca';
			case 'homeScreen.pin_note': return 'Metti in evidenza';
			case 'homeScreen.unpin_note': return 'Togli dall\'evidenza';
			case 'newNoteScreen.friend_name_hint': return 'Come si chiama?';
			case 'newNoteScreen.fields_missing_error': return 'Spiacente! Alcuni campi sono mancanti!';
			case 'newNoteScreen.overview': return 'Panoramica';
			case 'newNoteScreen.gift_ideas': return 'Idee regalo';
			case 'newNoteScreen.gift_ideas_hint': return 'Cosa amerebbe ricevere questa persona?';
			case 'newNoteScreen.reminders': return 'Promemoria';
			case 'newNoteScreen.category': return 'Categoria';
			case 'newNoteScreen.categories.0': return 'Amico 😄';
			case 'newNoteScreen.categories.1': return 'Lavoro 💼';
			case 'newNoteScreen.categories.2': return 'Famiglia 🏠';
			case 'newNoteScreen.categories.3': return 'Scuola 🎒';
			case 'newNoteScreen.categories.4': return 'Romantico ❤️‍🔥';
			case 'newNoteScreen.date_of_birth': return 'Data di nascita';
			case 'newNoteScreen.description': return 'Descrizione';
			case 'newNoteScreen.description_hint': return 'Aggiungi le note che desideri qui...';
			case 'newNoteScreen.coming_soon': return 'Prossimamente';
			case 'newNoteScreen.some_fields_are_missing': return 'Alcuni campi sono mancanti!';
			case 'newNoteScreen.note_saved': return 'Nota salvata con successo!';
			case 'newNoteScreen.archive_note': return 'Archivia nota';
			case 'newNoteScreen.archive_note_are_you_sure': return ({required Object name}) => 'Sei sicuro di voler archiviare la nota per \'${name}?\'';
			case 'newNoteScreen.note_achived': return 'Nota archiviata!';
			case 'newNoteScreen.select_image': return 'Seleziona immagine';
			case 'newNoteScreen.remove_image': return 'Rimuovi immagine';
			case 'newNoteScreen.randomize_illusrtation': return 'Illustrazione casuale';
			case 'newNoteScreen.unsaved_changes': return 'Modifiche non salvate';
			case 'newNoteScreen.save_changes_description': return 'Vuoi salvare le modifiche?';
			case 'newNoteScreen.save': return 'Salva';
			case 'newNoteScreen.discard': return 'Scarta';
			case 'newNoteScreen.add_reminder': return 'Aggiungi promemoria';
			case 'newNoteScreen.annual': return 'Annuale';
			case 'newNoteScreen.this_reminder_will_be_repeated_every_year': return 'Questo promemoria verrà ripetuto ogni anno';
			case 'newNoteScreen.name': return 'Nome';
			case 'newNoteScreen.date': return 'Data';
			case 'newNoteScreen.time': return 'Ora';
			case 'newNoteScreen.reminder_deleted': return 'Promemoria eliminato!';
			case 'newNoteScreen.no_reminders': return 'Nessun promemoria';
			case 'newNoteScreen.reminder_created': return 'Promemoria creato!';
			case 'archivedNotes.no_archived_notes': return 'Nessuna nota archiviata!';
			case 'archivedNotes.no_archived_notes_subtitle': return 'Le tue note eliminate appariranno qui.';
			case 'archivedNotes.delete_all_notes_forever_dialog_title': return 'Elimina tutte le note per sempre';
			case 'archivedNotes.delete_all_notes_forever_dialog_subtitle': return 'Questa azione non può essere annullata. L\'archivio sarà vuoto.';
			case 'archivedNotes.delete_note_forever_dialog_title': return 'Elimina nota per sempre';
			case 'archivedNotes.delete_note_forever_dialog_subtitle': return 'Questa azione non può essere annullata. La nota verrà eliminata per sempre.';
			case 'archivedNotes.restore': return 'Ripristina';
			case 'archivedNotes.delete_forever': return 'Elimina per sempre';
			case 'archivedNotes.note_deleted': return 'Nota eliminata!';
			case 'archivedNotes.note_restored': return 'Nota ripristinata!';
			case 'settingsScreen.app_name_and_version': return ({required Object version}) => 'Inscribe, v${version}';
			case 'settingsScreen.theme': return 'Tema';
			case 'settingsScreen.dark': return 'Tema scuro';
			case 'settingsScreen.light': return 'Tema chiaro';
			case 'settingsScreen.language': return 'Lingua';
			case 'settingsScreen.english': return 'Inglese';
			case 'settingsScreen.serbian': return 'Serbo';
			case 'settingsScreen.notes_view': return 'Vista note';
			case 'settingsScreen.grid_view': return 'Vista a griglia';
			case 'settingsScreen.list_view': return 'Vista elenco';
			case 'settingsScreen.use_dark_theme': return 'Usa tema scuro';
			case 'settingsScreen.dark_theme_description': return 'Riduci l\'affaticamento degli occhi e risparmia batteria';
			case 'settingsScreen.use_grid_view': return 'Usa vista a griglia';
			case 'settingsScreen.grid_view_description': return 'Le schede occupano meno spazio nella vista a griglia';
			case 'settingsScreen.visual': return 'Visuale';
			case 'settingsScreen.system': return 'Sistema';
			case 'settingsScreen.change_theme': return 'Cambia tema';
			case 'settingsScreen.apply_change': return 'Applicare il cambiamento?';
			case 'settingsScreen.this_action_will_restart_the_app': return 'Questa azione riavvierà l\'app';
			case 'calendarScreen.birthday': return 'Compleanno';
			case 'calendarScreen.annualEvent': return 'Evento annuale';
			case 'calendarScreen.oneTimeReminder': return 'Promemoria una tantum';
			default: return null;
		}
	}
}

extension on _StringsRu {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appName': return 'Inscribe';
			case 'cancel': return 'Отмена';
			case 'confirm': return 'Подтвердить';
			case 'undo': return 'Отменить';
			case 'edit': return 'Редактировать';
			case 'delete': return 'Удалить';
			case 'errorMessages.mandatory_field': return 'Это поле обязательно.';
			case 'drawer.memoirs': return 'Воспоминания';
			case 'drawer.archive': return 'Архив';
			case 'drawer.settings': return 'Настройки';
			case 'drawer.calendar': return 'Календарь';
			case 'drawer.export': return 'Экспорт';
			case 'drawer.import': return 'Импорт';
			case 'drawer.debug_notifications': return '[DEBUG] Уведомления';
			case 'importExport.fileDownloaded': return 'Данные сохранены в вашу файловую систему.';
			case 'importExport.dataHasBeenImported': return 'Данные из файла были импортированы.';
			case 'importExport.error': return 'Произошла ошибка при импорте данных из файла.';
			case 'welcomeScreen.title': return 'Добро пожаловать в Inscribe!';
			case 'welcomeScreen.slides.0': return 'Отмечайте дружбу с персонализированными заметками о вкусах, днях рождения и идеях для подарков.';
			case 'welcomeScreen.slides.1': return 'Составляйте продуманные списки подарков для каждого друга, делая каждый случай запоминающимся.';
			case 'welcomeScreen.slides.2': return 'Берите свои дружбы с собой - легко загружайте и переносите данные.';
			case 'welcomeScreen.slides.3': return 'Ваша конфиденциальность важна - наслаждайтесь полной офлайн-функциональностью, сохраняя ваши данные в безопасности.';
			case 'welcomeScreen.slides.4': return 'Не пропустите важные события - устанавливайте напоминания для особых событий и мероприятий.';
			case 'welcomeScreen.startButton': return 'Начать записи!';
			case 'homeScreen.welcome': return 'Добро пожаловать!';
			case 'homeScreen.no_notes_title': return 'Заметок не найдено!';
			case 'homeScreen.no_notes_subtitle': return 'Начните с добавления воспоминаний о друге.';
			case 'homeScreen.add_note': return 'Добавить заметку';
			case 'homeScreen.pinned': return 'Закрепленные';
			case 'homeScreen.other': return 'Другие';
			case 'homeScreen.search': return 'Поиск';
			case 'homeScreen.pin_note': return 'Закрепить заметку';
			case 'homeScreen.unpin_note': return 'Открепить заметку';
			case 'newNoteScreen.friend_name_hint': return 'Как его зовут?';
			case 'newNoteScreen.fields_missing_error': return 'Извините! Некоторые поля отсутствуют!';
			case 'newNoteScreen.overview': return 'Обзор';
			case 'newNoteScreen.gift_ideas': return 'Идеи подарков';
			case 'newNoteScreen.gift_ideas_hint': return 'Что бы понравилось этому человеку в подарок?';
			case 'newNoteScreen.reminders': return 'Напоминания';
			case 'newNoteScreen.category': return 'Категория';
			case 'newNoteScreen.categories.0': return 'Друг 😄';
			case 'newNoteScreen.categories.1': return 'Работа 💼';
			case 'newNoteScreen.categories.2': return 'Семья 🏠';
			case 'newNoteScreen.categories.3': return 'Школа 🎒';
			case 'newNoteScreen.categories.4': return 'Романтика ❤️‍🔥';
			case 'newNoteScreen.date_of_birth': return 'Дата рождения';
			case 'newNoteScreen.description': return 'Описание';
			case 'newNoteScreen.description_hint': return 'Добавьте любые заметки здесь...';
			case 'newNoteScreen.coming_soon': return 'Скоро будет';
			case 'newNoteScreen.some_fields_are_missing': return 'Некоторые поля отсутствуют!';
			case 'newNoteScreen.note_saved': return 'Заметка успешно сохранена!';
			case 'newNoteScreen.archive_note': return 'Архивировать заметку';
			case 'newNoteScreen.archive_note_are_you_sure': return ({required Object name}) => 'Вы уверены, что хотите архивировать заметку для \'${name}?\'';
			case 'newNoteScreen.note_achived': return 'Заметка архивирована!';
			case 'newNoteScreen.select_image': return 'Выбрать изображение';
			case 'newNoteScreen.remove_image': return 'Удалить изображение';
			case 'newNoteScreen.randomize_illusrtation': return 'Случайная иллюстрация';
			case 'newNoteScreen.unsaved_changes': return 'Несохраненные изменения';
			case 'newNoteScreen.save_changes_description': return 'Вы хотите сохранить изменения?';
			case 'newNoteScreen.save': return 'Сохранить';
			case 'newNoteScreen.discard': return 'Отменить';
			case 'newNoteScreen.add_reminder': return 'Добавить напоминание';
			case 'newNoteScreen.annual': return 'Ежегодно';
			case 'newNoteScreen.this_reminder_will_be_repeated_every_year': return 'Это напоминание будет повторяться каждый год';
			case 'newNoteScreen.name': return 'Имя';
			case 'newNoteScreen.date': return 'Дата';
			case 'newNoteScreen.time': return 'Время';
			case 'newNoteScreen.reminder_deleted': return 'Напоминание удалено!';
			case 'newNoteScreen.no_reminders': return 'Нет напоминаний';
			case 'newNoteScreen.reminder_created': return 'Напоминание создано!';
			case 'archivedNotes.no_archived_notes': return 'Архивных заметок нет!';
			case 'archivedNotes.no_archived_notes_subtitle': return 'Ваши удаленные заметки появятся здесь.';
			case 'archivedNotes.delete_all_notes_forever_dialog_title': return 'Удалить все заметки навсегда';
			case 'archivedNotes.delete_all_notes_forever_dialog_subtitle': return 'Это действие не может быть отменено. Архив будет очищен.';
			case 'archivedNotes.delete_note_forever_dialog_title': return 'Удалить заметку навсегда';
			case 'archivedNotes.delete_note_forever_dialog_subtitle': return 'Это действие не может быть отменено. Заметка будет удалена навсегда.';
			case 'archivedNotes.restore': return 'Восстановить';
			case 'archivedNotes.delete_forever': return 'Удалить навсегда';
			case 'archivedNotes.note_deleted': return 'Заметка удалена!';
			case 'archivedNotes.note_restored': return 'Заметка восстановлена!';
			case 'settingsScreen.app_name_and_version': return ({required Object version}) => 'Inscribe, v${version}';
			case 'settingsScreen.theme': return 'Тема';
			case 'settingsScreen.dark': return 'Темная тема';
			case 'settingsScreen.light': return 'Светлая тема';
			case 'settingsScreen.language': return 'Язык';
			case 'settingsScreen.english': return 'Английский';
			case 'settingsScreen.serbian': return 'Сербский';
			case 'settingsScreen.notes_view': return 'Просмотр заметок';
			case 'settingsScreen.grid_view': return 'Сетка';
			case 'settingsScreen.list_view': return 'Список';
			case 'settingsScreen.use_dark_theme': return 'Использовать темную тему';
			case 'settingsScreen.dark_theme_description': return 'Снижает нагрузку на глаза и экономит заряд батареи';
			case 'settingsScreen.use_grid_view': return 'Использовать вид сетки';
			case 'settingsScreen.grid_view_description': return 'Карточки занимают меньше места в виде сетки';
			case 'settingsScreen.visual': return 'Визуализация';
			case 'settingsScreen.system': return 'Система';
			case 'settingsScreen.change_theme': return 'Изменить тему';
			case 'settingsScreen.apply_change': return 'Применить изменения?';
			case 'settingsScreen.this_action_will_restart_the_app': return 'Это действие перезапустит приложение';
			case 'calendarScreen.birthday': return 'День рождения';
			case 'calendarScreen.annualEvent': return 'Ежегодное событие';
			case 'calendarScreen.oneTimeReminder': return 'Однократное напоминание';
			default: return null;
		}
	}
}

extension on _StringsSrLatn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appName': return 'Inscribe';
			case 'cancel': return 'Otkaži';
			case 'confirm': return 'Potvrdi';
			case 'undo': return 'Poništi';
			case 'edit': return 'Izmeni';
			case 'delete': return 'Obriši';
			case 'errorMessages.mandatory_field': return 'Ovo polje je obavezno.';
			case 'drawer.memoirs': return 'Memoari';
			case 'drawer.archive': return 'Arhiva';
			case 'drawer.settings': return 'Podešavanja';
			case 'drawer.calendar': return 'Kalendar';
			case 'drawer.export': return 'Izvoz podataka';
			case 'drawer.import': return 'Uvoz podataka';
			case 'drawer.debug_notifications': return '[DEBUG] Obaveštenja';
			case 'importExport.fileDownloaded': return 'Podaci su sačuvani na uređaju.';
			case 'importExport.dataHasBeenImported': return 'Podaci su uvezeni iz dokumenta.';
			case 'importExport.error': return 'Došlo je do greške prilikom uvoza podataka.';
			case 'welcomeScreen.title': return 'Dobrodošli u Inscribe!';
			case 'welcomeScreen.slides.0': return 'Proslavite prijateljstva sa personalizovanim beleškama o omiljenim stvarima, rođendanima i idejama za poklone.';
			case 'welcomeScreen.slides.1': return 'Kreirajte pažljivo odabrane liste poklona za svakog prijatelja, čineći svaki događaj nezaboravnim.';
			case 'welcomeScreen.slides.2': return 'Nosite svoja prijateljstva svuda - lako preuzmite i prebacite svoje podatke.';
			case 'welcomeScreen.slides.3': return 'Vaša privatnost je važna - uživajte u potpunoj offline funkcionalnosti, čuvajući svoje podatke sigurnim.';
			case 'welcomeScreen.slides.4': return 'Nikada ne propustite važan trenutak - postavite podsetnike za posebne događaje i prilike.';
			case 'welcomeScreen.startButton': return 'Započni beleženje!';
			case 'homeScreen.welcome': return 'Dobrodošli!';
			case 'homeScreen.no_notes_title': return 'Nema beležaka!';
			case 'homeScreen.no_notes_subtitle': return 'Počnite dodavanjem memoara o prijatelju.';
			case 'homeScreen.add_note': return 'Dodaj belešku';
			case 'homeScreen.pinned': return 'Prikačene';
			case 'homeScreen.other': return 'Ostalo';
			case 'homeScreen.search': return 'Pretraga';
			case 'homeScreen.pin_note': return 'Prikvači belešku';
			case 'homeScreen.unpin_note': return 'Otkvači belešku';
			case 'newNoteScreen.friend_name_hint': return 'Ime';
			case 'newNoteScreen.fields_missing_error': return 'Izvinjavamo se! Neka polja nedostaju!';
			case 'newNoteScreen.overview': return 'Pregled';
			case 'newNoteScreen.gift_ideas': return 'Ideje za poklone';
			case 'newNoteScreen.gift_ideas_hint': return 'Šta bi ova osoba volela kao poklon?';
			case 'newNoteScreen.reminders': return 'Podsetnici';
			case 'newNoteScreen.category': return 'Kategorija';
			case 'newNoteScreen.categories.0': return 'Prijatelj 😄';
			case 'newNoteScreen.categories.1': return 'Posao 💼';
			case 'newNoteScreen.categories.2': return 'Porodica 🏠';
			case 'newNoteScreen.categories.3': return 'Škola 🎒';
			case 'newNoteScreen.categories.4': return 'Partner ❤️‍🔥';
			case 'newNoteScreen.date_of_birth': return 'Datum rođenja';
			case 'newNoteScreen.description': return 'Opis';
			case 'newNoteScreen.description_hint': return 'Dodajte bilo koje beleške ovde...';
			case 'newNoteScreen.coming_soon': return 'Uskoro';
			case 'newNoteScreen.some_fields_are_missing': return 'Neka polja nedostaju!';
			case 'newNoteScreen.note_saved': return 'Beleška uspešno sačuvana!';
			case 'newNoteScreen.archive_note': return 'Arhiviraj belešku';
			case 'newNoteScreen.archive_note_are_you_sure': return ({required Object name}) => 'Da li ste sigurni da želite da arhivirate belešku za \'${name}?\'';
			case 'newNoteScreen.note_achived': return 'Beleška arhivirana!';
			case 'newNoteScreen.select_image': return 'Izaberi sliku';
			case 'newNoteScreen.remove_image': return 'Ukloni sliku';
			case 'newNoteScreen.randomize_illusrtation': return 'Nasuična ilustracija';
			case 'newNoteScreen.unsaved_changes': return 'Nesačuvane izmene';
			case 'newNoteScreen.save_changes_description': return 'Da li želite da sačuvate vaše izmene?';
			case 'newNoteScreen.save': return 'Sačuvaj';
			case 'newNoteScreen.discard': return 'Odbaci';
			case 'newNoteScreen.add_reminder': return 'Dodaj podsetnik';
			case 'newNoteScreen.annual': return 'Godišnji';
			case 'newNoteScreen.this_reminder_will_be_repeated_every_year': return 'Podsetnik će biti ponovljen svake godine';
			case 'newNoteScreen.name': return 'Naziv';
			case 'newNoteScreen.date': return 'Datum';
			case 'newNoteScreen.time': return 'Vreme';
			case 'newNoteScreen.reminder_deleted': return 'Podsetnik obrisan!';
			case 'newNoteScreen.no_reminders': return 'Nema podsetnika';
			case 'newNoteScreen.reminder_created': return 'Podsetnik kreiran!';
			case 'archivedNotes.no_archived_notes': return 'Nema arhiviranih beležaka!';
			case 'archivedNotes.no_archived_notes_subtitle': return 'Vaše obrisane beleške će se pojaviti ovde.';
			case 'archivedNotes.delete_all_notes_forever_dialog_title': return 'Obriši sve beleške zauvek';
			case 'archivedNotes.delete_all_notes_forever_dialog_subtitle': return 'Ova radnja se ne može poništiti. Vaša arhiva će biti ispražnjena.';
			case 'archivedNotes.delete_note_forever_dialog_title': return 'Obriši belešku zauvek';
			case 'archivedNotes.delete_note_forever_dialog_subtitle': return 'Ova radnja se ne može poništiti. Vaša beleška će biti obrisana zauvek.';
			case 'archivedNotes.restore': return 'Vrati';
			case 'archivedNotes.delete_forever': return 'Obriši zauvek';
			case 'archivedNotes.note_deleted': return 'Beleška obrisana!';
			case 'archivedNotes.note_restored': return 'Beleška vraćena!';
			case 'settingsScreen.app_name_and_version': return ({required Object version}) => 'Inscribe, v${version}';
			case 'settingsScreen.theme': return 'Tema';
			case 'settingsScreen.dark': return 'Tamna tema';
			case 'settingsScreen.light': return 'Svetla tema';
			case 'settingsScreen.language': return 'Jezik';
			case 'settingsScreen.english': return 'Engleski';
			case 'settingsScreen.serbian': return 'Srpski';
			case 'settingsScreen.notes_view': return 'Pregled beleški';
			case 'settingsScreen.grid_view': return 'Mrežni prikaz';
			case 'settingsScreen.list_view': return 'Lista prikaz';
			case 'settingsScreen.use_dark_theme': return 'Koristi tamnu temu';
			case 'settingsScreen.dark_theme_description': return 'Smanjenje naprezanja očiju i ušteda baterije';
			case 'settingsScreen.use_grid_view': return 'Koristi tabelarni prikaz';
			case 'settingsScreen.grid_view_description': return 'Kartice zauzimaju manje prostora';
			case 'settingsScreen.visual': return 'Vizuali';
			case 'settingsScreen.system': return 'Sistem';
			case 'settingsScreen.change_theme': return 'Promeni temu';
			case 'settingsScreen.apply_change': return 'Primeni promenu?';
			case 'settingsScreen.this_action_will_restart_the_app': return 'Ova akcija će restartovati aplikaciju';
			case 'calendarScreen.birthday': return 'Rođendan';
			case 'calendarScreen.annualEvent': return 'Godišnji događaj';
			case 'calendarScreen.oneTimeReminder': return 'Jednokratni podsetnik';
			default: return null;
		}
	}
}

extension on _StringsTr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appName': return 'Inscribe';
			case 'cancel': return 'İptal';
			case 'confirm': return 'Onayla';
			case 'undo': return 'Geri al';
			case 'edit': return 'Düzenle';
			case 'delete': return 'Sil';
			case 'errorMessages.mandatory_field': return 'Bu alan zorunludur.';
			case 'drawer.memoirs': return 'Anılar';
			case 'drawer.archive': return 'Arşiv';
			case 'drawer.settings': return 'Ayarlar';
			case 'drawer.calendar': return 'Takvim';
			case 'drawer.export': return 'Dışa aktar';
			case 'drawer.import': return 'İçe aktar';
			case 'drawer.debug_notifications': return '[DEBUG] Bildirimler';
			case 'importExport.fileDownloaded': return 'Veriler dosya sisteminize kaydedildi.';
			case 'importExport.dataHasBeenImported': return 'Dosyadan veri içe aktarıldı.';
			case 'importExport.error': return 'Dosyadan veri içe aktarılırken bir hata oluştu.';
			case 'welcomeScreen.title': return 'Inscribe\'a Hoş Geldiniz!';
			case 'welcomeScreen.slides.0': return 'Arkadaşlıkları, beğeniler, doğum günleri ve hediye fikirlerine dair kişiselleştirilmiş notlarla kutlayın.';
			case 'welcomeScreen.slides.1': return 'Her arkadaşınız için özenli hediye listeleri hazırlayın ve her etkinliği unutulmaz kılın.';
			case 'welcomeScreen.slides.2': return 'Arkadaşlıklarınızı her yere taşıyın - verilerinizi kolayca indirin ve aktarın.';
			case 'welcomeScreen.slides.3': return 'Gizliliğiniz önemlidir - verilerinizi güvende tutarak tam çevrimdışı işlevselliğin keyfini çıkarın.';
			case 'welcomeScreen.slides.4': return 'Hiçbir anı kaçırmayın - özel etkinlikler ve olaylar için hatırlatıcılar kurun.';
			case 'welcomeScreen.startButton': return 'Not almaya başla!';
			case 'homeScreen.welcome': return 'Hoş geldiniz!';
			case 'homeScreen.no_notes_title': return 'Not bulunamadı!';
			case 'homeScreen.no_notes_subtitle': return 'Bir arkadaş anısı ekleyerek başlayın.';
			case 'homeScreen.add_note': return 'Not ekle';
			case 'homeScreen.pinned': return 'Sabitlenmiş';
			case 'homeScreen.other': return 'Diğer';
			case 'homeScreen.search': return 'Ara';
			case 'homeScreen.pin_note': return 'Notu sabitle';
			case 'homeScreen.unpin_note': return 'Notu sabitlemeden çıkar';
			case 'newNoteScreen.friend_name_hint': return 'Adı nedir?';
			case 'newNoteScreen.fields_missing_error': return 'Üzgünüz! Bazı alanlar eksik!';
			case 'newNoteScreen.overview': return 'Genel Bakış';
			case 'newNoteScreen.gift_ideas': return 'Hediye fikirleri';
			case 'newNoteScreen.gift_ideas_hint': return 'Bu kişi neyi hediye olarak sever?';
			case 'newNoteScreen.reminders': return 'Hatırlatıcılar';
			case 'newNoteScreen.category': return 'Kategori';
			case 'newNoteScreen.categories.0': return 'Arkadaş 😄';
			case 'newNoteScreen.categories.1': return 'İş 💼';
			case 'newNoteScreen.categories.2': return 'Aile 🏠';
			case 'newNoteScreen.categories.3': return 'Okul 🎒';
			case 'newNoteScreen.categories.4': return 'Romantik ❤️‍🔥';
			case 'newNoteScreen.date_of_birth': return 'Doğum tarihi';
			case 'newNoteScreen.description': return 'Açıklama';
			case 'newNoteScreen.description_hint': return 'Buraya istediğiniz notları ekleyin...';
			case 'newNoteScreen.coming_soon': return 'Yakında geliyor';
			case 'newNoteScreen.some_fields_are_missing': return 'Bazı alanlar eksik!';
			case 'newNoteScreen.note_saved': return 'Not başarıyla kaydedildi!';
			case 'newNoteScreen.archive_note': return 'Notu arşivle';
			case 'newNoteScreen.archive_note_are_you_sure': return ({required Object name}) => 'Bu notu \'${name}\' arşivlemek istediğinize emin misiniz?';
			case 'newNoteScreen.note_achived': return 'Not arşivlendi!';
			case 'newNoteScreen.select_image': return 'Resim seç';
			case 'newNoteScreen.remove_image': return 'Resmi kaldır';
			case 'newNoteScreen.randomize_illusrtation': return 'İllüstrasyonu rastgele seç';
			case 'newNoteScreen.unsaved_changes': return 'Kaydedilmemiş değişiklikler';
			case 'newNoteScreen.save_changes_description': return 'Değişiklikleri kaydetmek istiyor musunuz?';
			case 'newNoteScreen.save': return 'Kaydet';
			case 'newNoteScreen.discard': return 'Vazgeç';
			case 'newNoteScreen.add_reminder': return 'Hatırlatıcı ekle';
			case 'newNoteScreen.annual': return 'Yıllık';
			case 'newNoteScreen.this_reminder_will_be_repeated_every_year': return 'Bu hatırlatıcı her yıl tekrarlanacak';
			case 'newNoteScreen.name': return 'Ad';
			case 'newNoteScreen.date': return 'Tarih';
			case 'newNoteScreen.time': return 'Saat';
			case 'newNoteScreen.reminder_deleted': return 'Hatırlatıcı silindi!';
			case 'newNoteScreen.no_reminders': return 'Hatırlatıcı yok';
			case 'newNoteScreen.reminder_created': return 'Hatırlatıcı oluşturuldu!';
			case 'archivedNotes.no_archived_notes': return 'Arşivlenmiş not yok!';
			case 'archivedNotes.no_archived_notes_subtitle': return 'Silinen notlarınız burada görünecek.';
			case 'archivedNotes.delete_all_notes_forever_dialog_title': return 'Tüm notları sonsuza kadar sil';
			case 'archivedNotes.delete_all_notes_forever_dialog_subtitle': return 'Bu işlem geri alınamaz. Arşiv boşaltılacak.';
			case 'archivedNotes.delete_note_forever_dialog_title': return 'Notu sonsuza kadar sil';
			case 'archivedNotes.delete_note_forever_dialog_subtitle': return 'Bu işlem geri alınamaz. Notunuz kalıcı olarak silinecek.';
			case 'archivedNotes.restore': return 'Geri yükle';
			case 'archivedNotes.delete_forever': return 'Sonsuza kadar sil';
			case 'archivedNotes.note_deleted': return 'Not silindi!';
			case 'archivedNotes.note_restored': return 'Not geri yüklendi!';
			case 'settingsScreen.app_name_and_version': return ({required Object version}) => 'Inscribe, v${version}';
			case 'settingsScreen.theme': return 'Tema';
			case 'settingsScreen.dark': return 'Koyu tema';
			case 'settingsScreen.light': return 'Açık tema';
			case 'settingsScreen.language': return 'Dil';
			case 'settingsScreen.english': return 'İngilizce';
			case 'settingsScreen.serbian': return 'Sırpça';
			case 'settingsScreen.notes_view': return 'Not görünümü';
			case 'settingsScreen.grid_view': return 'Izgara görünümü';
			case 'settingsScreen.list_view': return 'Liste görünümü';
			case 'settingsScreen.use_dark_theme': return 'Koyu temayı kullan';
			case 'settingsScreen.dark_theme_description': return 'Göz yorgunluğunu azaltın ve pil tasarrufu yapın';
			case 'settingsScreen.use_grid_view': return 'Izgara görünümünü kullan';
			case 'settingsScreen.grid_view_description': return 'Kartlar ızgara görünümünde daha az yer kaplar';
			case 'settingsScreen.visual': return 'Görsel';
			case 'settingsScreen.system': return 'Sistem';
			case 'settingsScreen.change_theme': return 'Temayı değiştir';
			case 'settingsScreen.apply_change': return 'Değişiklik uygulansın mı?';
			case 'settingsScreen.this_action_will_restart_the_app': return 'Bu işlem uygulamayı yeniden başlatacak';
			case 'calendarScreen.birthday': return 'Doğum günü';
			case 'calendarScreen.annualEvent': return 'Yıllık etkinlik';
			case 'calendarScreen.oneTimeReminder': return 'Tek seferlik hatırlatıcı';
			default: return null;
		}
	}
}
