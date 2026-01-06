///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
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

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations

	/// en: 'Inscribe'
	String get appName => 'Inscribe';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Confirm'
	String get confirm => 'Confirm';

	/// en: 'Undo'
	String get undo => 'Undo';

	/// en: 'Edit'
	String get edit => 'Edit';

	/// en: 'Delete'
	String get delete => 'Delete';

	late final TranslationsErrorMessagesEn errorMessages = TranslationsErrorMessagesEn.internal(_root);
	late final TranslationsDrawerEn drawer = TranslationsDrawerEn.internal(_root);
	late final TranslationsImportExportEn importExport = TranslationsImportExportEn.internal(_root);
	late final TranslationsWelcomeScreenEn welcomeScreen = TranslationsWelcomeScreenEn.internal(_root);
	late final TranslationsHomeScreenEn homeScreen = TranslationsHomeScreenEn.internal(_root);
	late final TranslationsNewNoteScreenEn newNoteScreen = TranslationsNewNoteScreenEn.internal(_root);
	late final TranslationsArchivedNotesEn archivedNotes = TranslationsArchivedNotesEn.internal(_root);
	late final TranslationsSettingsScreenEn settingsScreen = TranslationsSettingsScreenEn.internal(_root);
	late final TranslationsAppColorThemesEn appColorThemes = TranslationsAppColorThemesEn.internal(_root);
	late final TranslationsCalendarScreenEn calendarScreen = TranslationsCalendarScreenEn.internal(_root);
}

// Path: errorMessages
class TranslationsErrorMessagesEn {
	TranslationsErrorMessagesEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'This field is mandatory.'
	String get mandatory_field => 'This field is mandatory.';
}

// Path: drawer
class TranslationsDrawerEn {
	TranslationsDrawerEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Memoirs'
	String get memoirs => 'Memoirs';

	/// en: 'Archive'
	String get archive => 'Archive';

	/// en: 'Settings'
	String get settings => 'Settings';

	/// en: 'Calendar'
	String get calendar => 'Calendar';

	/// en: 'Export'
	String get export => 'Export';

	/// en: 'Import'
	String get import => 'Import';

	/// en: '[DEBUG] Notifications'
	String get debug_notifications => '[DEBUG] Notifications';
}

// Path: importExport
class TranslationsImportExportEn {
	TranslationsImportExportEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'The data has been saved on your file system.'
	String get fileDownloaded => 'The data has been saved on your file system.';

	/// en: 'Data from file has been imported.'
	String get dataHasBeenImported => 'Data from file has been imported.';

	/// en: 'An error occurred while importing data from file.'
	String get error => 'An error occurred while importing data from file.';
}

// Path: welcomeScreen
class TranslationsWelcomeScreenEn {
	TranslationsWelcomeScreenEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Welcome to Inscribe!'
	String get title => 'Welcome to Inscribe!';

	List<String> get slides => [
		'Celebrate friendships with personalized notes on likes, birthdays, and gift ideas.',
		'Curate thoughtful gift lists for each friend, making every occasion memorable.',
		'Take your friendships anywhere - easily download and transfer your data.',
		'Your privacy matters - enjoy full offline functionality, keeping your data secure.',
		'Never miss a beat - set reminders for special occasions and events.',
	];

	/// en: 'Start noting!'
	String get startButton => 'Start noting!';
}

// Path: homeScreen
class TranslationsHomeScreenEn {
	TranslationsHomeScreenEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Welcome!'
	String get welcome => 'Welcome!';

	/// en: 'No notes found!'
	String get no_notes_title => 'No notes found!';

	/// en: 'Start by adding a friend memoir.'
	String get no_notes_subtitle => 'Start by adding a friend memoir.';

	/// en: 'Add note'
	String get add_note => 'Add note';

	/// en: 'Pinned'
	String get pinned => 'Pinned';

	/// en: 'Other'
	String get other => 'Other';

	/// en: 'Search'
	String get search => 'Search';

	/// en: 'Pin note'
	String get pin_note => 'Pin note';

	/// en: 'Unpin note'
	String get unpin_note => 'Unpin note';

	/// en: '🎂 It's ${name}'s birthday today!'
	String its_birthday_today({required Object name}) => '🎂 It\'s ${name}\'s birthday today!';
}

// Path: newNoteScreen
class TranslationsNewNoteScreenEn {
	TranslationsNewNoteScreenEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Their name'
	String get friend_name_hint => 'Their name';

	/// en: 'Sorry! Some fields are missing!'
	String get fields_missing_error => 'Sorry! Some fields are missing!';

	/// en: 'Overview'
	String get overview => 'Overview';

	/// en: 'Gift ideas'
	String get gift_ideas => 'Gift ideas';

	/// en: 'What would this person love as a gift?'
	String get gift_ideas_hint => 'What would this person love as a gift?';

	/// en: 'Reminders'
	String get reminders => 'Reminders';

	/// en: 'Category'
	String get category => 'Category';

	List<String> get categories => [
		'Friend 😄',
		'Work 💼',
		'Family 🏠',
		'School 🎒',
		'Romantic ❤️‍🔥',
	];

	/// en: 'Date of birth'
	String get date_of_birth => 'Date of birth';

	/// en: 'Description'
	String get description => 'Description';

	/// en: 'Add any notes you'd like here...'
	String get description_hint => 'Add any notes you\'d like here...';

	/// en: 'Coming soon'
	String get coming_soon => 'Coming soon';

	/// en: 'Some fields are missing!'
	String get some_fields_are_missing => 'Some fields are missing!';

	/// en: 'Note succesfully saved!'
	String get note_saved => 'Note succesfully saved!';

	/// en: 'Archive note'
	String get archive_note => 'Archive note';

	/// en: 'Are you sure you want to archive note for '$name?''
	String archive_note_are_you_sure({required Object name}) => 'Are you sure you want to archive note for \'${name}?\'';

	/// en: 'Note archived!'
	String get note_achived => 'Note archived!';

	/// en: 'Select image'
	String get select_image => 'Select image';

	/// en: 'Remove image'
	String get remove_image => 'Remove image';

	/// en: 'Randomize illustration'
	String get randomize_illusrtation => 'Randomize illustration';

	/// en: 'Unsaved changes'
	String get unsaved_changes => 'Unsaved changes';

	/// en: 'Do you wish to save your changes?'
	String get save_changes_description => 'Do you wish to save your changes?';

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'Discard'
	String get discard => 'Discard';

	/// en: 'Add reminder'
	String get add_reminder => 'Add reminder';

	/// en: 'Annual'
	String get annual => 'Annual';

	/// en: 'This reminder will be repeated every year'
	String get this_reminder_will_be_repeated_every_year => 'This reminder will be repeated every year';

	/// en: 'Name'
	String get name => 'Name';

	/// en: 'Date'
	String get date => 'Date';

	/// en: 'Time'
	String get time => 'Time';

	/// en: 'Reminder deleted!'
	String get reminder_deleted => 'Reminder deleted!';

	/// en: 'No reminders'
	String get no_reminders => 'No reminders';

	/// en: 'Reminder created!'
	String get reminder_created => 'Reminder created!';
}

// Path: archivedNotes
class TranslationsArchivedNotesEn {
	TranslationsArchivedNotesEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'No archived notes!'
	String get no_archived_notes => 'No archived notes!';

	/// en: 'Your deleted notes will appear here.'
	String get no_archived_notes_subtitle => 'Your deleted notes will appear here.';

	/// en: 'Delete all notes forever'
	String get delete_all_notes_forever_dialog_title => 'Delete all notes forever';

	/// en: 'This action cannot be undone. You archive will be emptied.'
	String get delete_all_notes_forever_dialog_subtitle => 'This action cannot be undone. You archive will be emptied.';

	/// en: 'Delete note forever'
	String get delete_note_forever_dialog_title => 'Delete note forever';

	/// en: 'This action cannot be undone. You note will be deleted forever.'
	String get delete_note_forever_dialog_subtitle => 'This action cannot be undone. You note will be deleted forever.';

	/// en: 'Restore'
	String get restore => 'Restore';

	/// en: 'Delete forever'
	String get delete_forever => 'Delete forever';

	/// en: 'Note deleted!'
	String get note_deleted => 'Note deleted!';

	/// en: 'Note restored!'
	String get note_restored => 'Note restored!';
}

// Path: settingsScreen
class TranslationsSettingsScreenEn {
	TranslationsSettingsScreenEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Inscribe, v$version'
	String app_name_and_version({required Object version}) => 'Inscribe, v${version}';

	/// en: 'Theme'
	String get theme => 'Theme';

	/// en: 'Dark theme'
	String get dark => 'Dark theme';

	/// en: 'Light theme'
	String get light => 'Light theme';

	/// en: 'Language'
	String get language => 'Language';

	/// en: 'English'
	String get english => 'English';

	/// en: 'Serbian'
	String get serbian => 'Serbian';

	/// en: 'Notes view'
	String get notes_view => 'Notes view';

	/// en: 'Grid view'
	String get grid_view => 'Grid view';

	/// en: 'List view'
	String get list_view => 'List view';

	/// en: 'Use dark theme'
	String get use_dark_theme => 'Use dark theme';

	/// en: 'Reduce eye strain and save battery'
	String get dark_theme_description => 'Reduce eye strain and save battery';

	/// en: 'Use grid view'
	String get use_grid_view => 'Use grid view';

	/// en: 'Cards take up less space in a grid view'
	String get grid_view_description => 'Cards take up less space in a grid view';

	/// en: 'Visual'
	String get visual => 'Visual';

	/// en: 'System'
	String get system => 'System';

	/// en: 'Change theme'
	String get change_theme => 'Change theme';

	/// en: 'Select theme'
	String get select_theme => 'Select theme';

	/// en: 'Apply change?'
	String get apply_change => 'Apply change?';

	/// en: 'This action will restart the app'
	String get this_action_will_restart_the_app => 'This action will restart the app';

	/// en: '🔔 Reminders note'
	String get remindersNote => '🔔 Reminders note';

	/// en: 'If you enabled reminders for this app, please make sure to periodically open it in order to recieve scheduled reminders properly. Due to the completely offline nature of this app, reminders will not be sent if the app is not opened for a long time. Thank you for understanding!'
	String get remindersNoteDescription => 'If you enabled reminders for this app, please make sure to periodically open it in order to recieve scheduled reminders properly. Due to the completely offline nature of this app, reminders will not be sent if the app is not opened for a long time. Thank you for understanding!';
}

// Path: appColorThemes
class TranslationsAppColorThemesEn {
	TranslationsAppColorThemesEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Default Light'
	String get defaultLight => 'Default Light';

	/// en: 'Default Dark'
	String get defaultDark => 'Default Dark';

	/// en: 'Strawberry Pink [Light]'
	String get strawberryPink => 'Strawberry Pink [Light]';

	/// en: 'Forest Green [Dark]'
	String get forestGreen => 'Forest Green [Dark]';
}

// Path: calendarScreen
class TranslationsCalendarScreenEn {
	TranslationsCalendarScreenEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Birthday'
	String get birthday => 'Birthday';

	/// en: 'Annual event'
	String get annualEvent => 'Annual event';

	/// en: 'One time reminder'
	String get oneTimeReminder => 'One time reminder';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'appName' => 'Inscribe',
			'cancel' => 'Cancel',
			'confirm' => 'Confirm',
			'undo' => 'Undo',
			'edit' => 'Edit',
			'delete' => 'Delete',
			'errorMessages.mandatory_field' => 'This field is mandatory.',
			'drawer.memoirs' => 'Memoirs',
			'drawer.archive' => 'Archive',
			'drawer.settings' => 'Settings',
			'drawer.calendar' => 'Calendar',
			'drawer.export' => 'Export',
			'drawer.import' => 'Import',
			'drawer.debug_notifications' => '[DEBUG] Notifications',
			'importExport.fileDownloaded' => 'The data has been saved on your file system.',
			'importExport.dataHasBeenImported' => 'Data from file has been imported.',
			'importExport.error' => 'An error occurred while importing data from file.',
			'welcomeScreen.title' => 'Welcome to Inscribe!',
			'welcomeScreen.slides.0' => 'Celebrate friendships with personalized notes on likes, birthdays, and gift ideas.',
			'welcomeScreen.slides.1' => 'Curate thoughtful gift lists for each friend, making every occasion memorable.',
			'welcomeScreen.slides.2' => 'Take your friendships anywhere - easily download and transfer your data.',
			'welcomeScreen.slides.3' => 'Your privacy matters - enjoy full offline functionality, keeping your data secure.',
			'welcomeScreen.slides.4' => 'Never miss a beat - set reminders for special occasions and events.',
			'welcomeScreen.startButton' => 'Start noting!',
			'homeScreen.welcome' => 'Welcome!',
			'homeScreen.no_notes_title' => 'No notes found!',
			'homeScreen.no_notes_subtitle' => 'Start by adding a friend memoir.',
			'homeScreen.add_note' => 'Add note',
			'homeScreen.pinned' => 'Pinned',
			'homeScreen.other' => 'Other',
			'homeScreen.search' => 'Search',
			'homeScreen.pin_note' => 'Pin note',
			'homeScreen.unpin_note' => 'Unpin note',
			'homeScreen.its_birthday_today' => ({required Object name}) => '🎂 It\'s ${name}\'s birthday today!',
			'newNoteScreen.friend_name_hint' => 'Their name',
			'newNoteScreen.fields_missing_error' => 'Sorry! Some fields are missing!',
			'newNoteScreen.overview' => 'Overview',
			'newNoteScreen.gift_ideas' => 'Gift ideas',
			'newNoteScreen.gift_ideas_hint' => 'What would this person love as a gift?',
			'newNoteScreen.reminders' => 'Reminders',
			'newNoteScreen.category' => 'Category',
			'newNoteScreen.categories.0' => 'Friend 😄',
			'newNoteScreen.categories.1' => 'Work 💼',
			'newNoteScreen.categories.2' => 'Family 🏠',
			'newNoteScreen.categories.3' => 'School 🎒',
			'newNoteScreen.categories.4' => 'Romantic ❤️‍🔥',
			'newNoteScreen.date_of_birth' => 'Date of birth',
			'newNoteScreen.description' => 'Description',
			'newNoteScreen.description_hint' => 'Add any notes you\'d like here...',
			'newNoteScreen.coming_soon' => 'Coming soon',
			'newNoteScreen.some_fields_are_missing' => 'Some fields are missing!',
			'newNoteScreen.note_saved' => 'Note succesfully saved!',
			'newNoteScreen.archive_note' => 'Archive note',
			'newNoteScreen.archive_note_are_you_sure' => ({required Object name}) => 'Are you sure you want to archive note for \'${name}?\'',
			'newNoteScreen.note_achived' => 'Note archived!',
			'newNoteScreen.select_image' => 'Select image',
			'newNoteScreen.remove_image' => 'Remove image',
			'newNoteScreen.randomize_illusrtation' => 'Randomize illustration',
			'newNoteScreen.unsaved_changes' => 'Unsaved changes',
			'newNoteScreen.save_changes_description' => 'Do you wish to save your changes?',
			'newNoteScreen.save' => 'Save',
			'newNoteScreen.discard' => 'Discard',
			'newNoteScreen.add_reminder' => 'Add reminder',
			'newNoteScreen.annual' => 'Annual',
			'newNoteScreen.this_reminder_will_be_repeated_every_year' => 'This reminder will be repeated every year',
			'newNoteScreen.name' => 'Name',
			'newNoteScreen.date' => 'Date',
			'newNoteScreen.time' => 'Time',
			'newNoteScreen.reminder_deleted' => 'Reminder deleted!',
			'newNoteScreen.no_reminders' => 'No reminders',
			'newNoteScreen.reminder_created' => 'Reminder created!',
			'archivedNotes.no_archived_notes' => 'No archived notes!',
			'archivedNotes.no_archived_notes_subtitle' => 'Your deleted notes will appear here.',
			'archivedNotes.delete_all_notes_forever_dialog_title' => 'Delete all notes forever',
			'archivedNotes.delete_all_notes_forever_dialog_subtitle' => 'This action cannot be undone. You archive will be emptied.',
			'archivedNotes.delete_note_forever_dialog_title' => 'Delete note forever',
			'archivedNotes.delete_note_forever_dialog_subtitle' => 'This action cannot be undone. You note will be deleted forever.',
			'archivedNotes.restore' => 'Restore',
			'archivedNotes.delete_forever' => 'Delete forever',
			'archivedNotes.note_deleted' => 'Note deleted!',
			'archivedNotes.note_restored' => 'Note restored!',
			'settingsScreen.app_name_and_version' => ({required Object version}) => 'Inscribe, v${version}',
			'settingsScreen.theme' => 'Theme',
			'settingsScreen.dark' => 'Dark theme',
			'settingsScreen.light' => 'Light theme',
			'settingsScreen.language' => 'Language',
			'settingsScreen.english' => 'English',
			'settingsScreen.serbian' => 'Serbian',
			'settingsScreen.notes_view' => 'Notes view',
			'settingsScreen.grid_view' => 'Grid view',
			'settingsScreen.list_view' => 'List view',
			'settingsScreen.use_dark_theme' => 'Use dark theme',
			'settingsScreen.dark_theme_description' => 'Reduce eye strain and save battery',
			'settingsScreen.use_grid_view' => 'Use grid view',
			'settingsScreen.grid_view_description' => 'Cards take up less space in a grid view',
			'settingsScreen.visual' => 'Visual',
			'settingsScreen.system' => 'System',
			'settingsScreen.change_theme' => 'Change theme',
			'settingsScreen.select_theme' => 'Select theme',
			'settingsScreen.apply_change' => 'Apply change?',
			'settingsScreen.this_action_will_restart_the_app' => 'This action will restart the app',
			'settingsScreen.remindersNote' => '🔔 Reminders note',
			'settingsScreen.remindersNoteDescription' => 'If you enabled reminders for this app, please make sure to periodically open it in order to recieve scheduled reminders properly. Due to the completely offline nature of this app, reminders will not be sent if the app is not opened for a long time. Thank you for understanding!',
			'appColorThemes.defaultLight' => 'Default Light',
			'appColorThemes.defaultDark' => 'Default Dark',
			'appColorThemes.strawberryPink' => 'Strawberry Pink [Light]',
			'appColorThemes.forestGreen' => 'Forest Green [Dark]',
			'calendarScreen.birthday' => 'Birthday',
			'calendarScreen.annualEvent' => 'Annual event',
			'calendarScreen.oneTimeReminder' => 'One time reminder',
			_ => null,
		};
	}
}
