/// Generated file. Do not edit.
///
/// Original: lib/core/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 190 (95 per locale)
///
/// Built on 2024-08-26 at 13:35 UTC

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
	sr(languageCode: 'sr', build: _StringsSr.build);

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
	late final _StringsWelcomeScreenEn welcomeScreen = _StringsWelcomeScreenEn._(_root);
	late final _StringsHomeScreenEn homeScreen = _StringsHomeScreenEn._(_root);
	late final _StringsNewNoteScreenEn newNoteScreen = _StringsNewNoteScreenEn._(_root);
	late final _StringsArchivedNotesEn archivedNotes = _StringsArchivedNotesEn._(_root);
	late final _StringsSettingsScreenEn settingsScreen = _StringsSettingsScreenEn._(_root);
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
	String get export => 'Export [COMING SOON]';
	String get import => 'Import [COMING SOON]';
	String get debug_notifications => '[DEBUG] Notifications';
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
	String get this_action_will_restart_the_app => 'This action will restart the app';
}

// Path: <root>
class _StringsSr implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsSr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.sr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <sr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsSr _root = this; // ignore: unused_field

	// Translations
	@override String get appName => 'Inscribe';
	@override String get cancel => 'Otkaži';
	@override String get confirm => 'Potvrdi';
	@override String get undo => 'Poništi';
	@override String get edit => 'Izmeni';
	@override String get delete => 'Obriši';
	@override late final _StringsErrorMessagesSr errorMessages = _StringsErrorMessagesSr._(_root);
	@override late final _StringsDrawerSr drawer = _StringsDrawerSr._(_root);
	@override late final _StringsWelcomeScreenSr welcomeScreen = _StringsWelcomeScreenSr._(_root);
	@override late final _StringsHomeScreenSr homeScreen = _StringsHomeScreenSr._(_root);
	@override late final _StringsNewNoteScreenSr newNoteScreen = _StringsNewNoteScreenSr._(_root);
	@override late final _StringsArchivedNotesSr archivedNotes = _StringsArchivedNotesSr._(_root);
	@override late final _StringsSettingsScreenSr settingsScreen = _StringsSettingsScreenSr._(_root);
}

// Path: errorMessages
class _StringsErrorMessagesSr implements _StringsErrorMessagesEn {
	_StringsErrorMessagesSr._(this._root);

	@override final _StringsSr _root; // ignore: unused_field

	// Translations
	@override String get mandatory_field => 'Ovo polje je obavezno.';
}

// Path: drawer
class _StringsDrawerSr implements _StringsDrawerEn {
	_StringsDrawerSr._(this._root);

	@override final _StringsSr _root; // ignore: unused_field

	// Translations
	@override String get memoirs => 'Memoari';
	@override String get archive => 'Arhiva';
	@override String get settings => 'Podešavanja';
	@override String get calendar => 'Kalendar';
	@override String get export => 'Izvoz podataka [USKORO]';
	@override String get import => 'Uvoz podataka [USKORO]';
	@override String get debug_notifications => '[DEBUG] Obaveštenja';
}

// Path: welcomeScreen
class _StringsWelcomeScreenSr implements _StringsWelcomeScreenEn {
	_StringsWelcomeScreenSr._(this._root);

	@override final _StringsSr _root; // ignore: unused_field

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
class _StringsHomeScreenSr implements _StringsHomeScreenEn {
	_StringsHomeScreenSr._(this._root);

	@override final _StringsSr _root; // ignore: unused_field

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
class _StringsNewNoteScreenSr implements _StringsNewNoteScreenEn {
	_StringsNewNoteScreenSr._(this._root);

	@override final _StringsSr _root; // ignore: unused_field

	// Translations
	@override String get friend_name_hint => 'Kako se zove?';
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
class _StringsArchivedNotesSr implements _StringsArchivedNotesEn {
	_StringsArchivedNotesSr._(this._root);

	@override final _StringsSr _root; // ignore: unused_field

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
class _StringsSettingsScreenSr implements _StringsSettingsScreenEn {
	_StringsSettingsScreenSr._(this._root);

	@override final _StringsSr _root; // ignore: unused_field

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
	@override String get this_action_will_restart_the_app => 'Ova akcija će restartovati aplikaciju';
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
			case 'drawer.export': return 'Export [COMING SOON]';
			case 'drawer.import': return 'Import [COMING SOON]';
			case 'drawer.debug_notifications': return '[DEBUG] Notifications';
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
			case 'settingsScreen.this_action_will_restart_the_app': return 'This action will restart the app';
			default: return null;
		}
	}
}

extension on _StringsSr {
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
			case 'drawer.export': return 'Izvoz podataka [USKORO]';
			case 'drawer.import': return 'Uvoz podataka [USKORO]';
			case 'drawer.debug_notifications': return '[DEBUG] Obaveštenja';
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
			case 'newNoteScreen.friend_name_hint': return 'Kako se zove?';
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
			case 'settingsScreen.this_action_will_restart_the_app': return 'Ova akcija će restartovati aplikaciju';
			default: return null;
		}
	}
}
