///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsDe extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsDe _root = this; // ignore: unused_field

	@override 
	TranslationsDe $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsDe(meta: meta ?? this.$meta);

	// Translations
	@override String get appName => 'Inscribe';
	@override String get cancel => 'Abbrechen';
	@override String get confirm => 'Bestätigen';
	@override String get undo => 'Rückgängig machen';
	@override String get edit => 'Bearbeiten';
	@override String get delete => 'Löschen';
	@override late final _TranslationsErrorMessagesDe errorMessages = _TranslationsErrorMessagesDe._(_root);
	@override late final _TranslationsDrawerDe drawer = _TranslationsDrawerDe._(_root);
	@override late final _TranslationsImportExportDe importExport = _TranslationsImportExportDe._(_root);
	@override late final _TranslationsWelcomeScreenDe welcomeScreen = _TranslationsWelcomeScreenDe._(_root);
	@override late final _TranslationsHomeScreenDe homeScreen = _TranslationsHomeScreenDe._(_root);
	@override late final _TranslationsNewNoteScreenDe newNoteScreen = _TranslationsNewNoteScreenDe._(_root);
	@override late final _TranslationsArchivedNotesDe archivedNotes = _TranslationsArchivedNotesDe._(_root);
	@override late final _TranslationsSettingsScreenDe settingsScreen = _TranslationsSettingsScreenDe._(_root);
	@override late final _TranslationsCalendarScreenDe calendarScreen = _TranslationsCalendarScreenDe._(_root);
}

// Path: errorMessages
class _TranslationsErrorMessagesDe extends TranslationsErrorMessagesEn {
	_TranslationsErrorMessagesDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get mandatory_field => 'Dieses Feld ist erforderlich.';
}

// Path: drawer
class _TranslationsDrawerDe extends TranslationsDrawerEn {
	_TranslationsDrawerDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

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
class _TranslationsImportExportDe extends TranslationsImportExportEn {
	_TranslationsImportExportDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get fileDownloaded => 'Die Daten wurden auf Ihr Dateisystem gespeichert.';
	@override String get dataHasBeenImported => 'Daten aus der Datei wurden importiert.';
	@override String get error => 'Es ist ein Fehler beim Importieren der Daten aus der Datei aufgetreten.';
}

// Path: welcomeScreen
class _TranslationsWelcomeScreenDe extends TranslationsWelcomeScreenEn {
	_TranslationsWelcomeScreenDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

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
class _TranslationsHomeScreenDe extends TranslationsHomeScreenEn {
	_TranslationsHomeScreenDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

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
	@override String its_birthday_today({required Object name}) => '🎂 Heute ist ${name}\'s Geburtstag!';
}

// Path: newNoteScreen
class _TranslationsNewNoteScreenDe extends TranslationsNewNoteScreenEn {
	_TranslationsNewNoteScreenDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

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
class _TranslationsArchivedNotesDe extends TranslationsArchivedNotesEn {
	_TranslationsArchivedNotesDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

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
class _TranslationsSettingsScreenDe extends TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

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
	@override String get remindersNote => '🔔 Erinnerungen Hinweis';
	@override String get remindersNoteDescription => 'Wenn Sie Erinnerungen für diese App aktiviert haben, stellen Sie bitte sicher, dass Sie sie regelmäßig öffnen, um die geplanten Erinnerungen ordnungsgemäß zu erhalten. Aufgrund der vollständig offline funktionierenden Natur dieser App werden Erinnerungen nicht gesendet, wenn die App über einen längeren Zeitraum nicht geöffnet wird. Vielen Dank für Ihr Verständnis!';
}

// Path: calendarScreen
class _TranslationsCalendarScreenDe extends TranslationsCalendarScreenEn {
	_TranslationsCalendarScreenDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get birthday => 'Geburtstag';
	@override String get annualEvent => 'Jährliches Ereignis';
	@override String get oneTimeReminder => 'Einmalige Erinnerung';
}

/// The flat map containing all translations for locale <de>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsDe {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'appName' => 'Inscribe',
			'cancel' => 'Abbrechen',
			'confirm' => 'Bestätigen',
			'undo' => 'Rückgängig machen',
			'edit' => 'Bearbeiten',
			'delete' => 'Löschen',
			'errorMessages.mandatory_field' => 'Dieses Feld ist erforderlich.',
			'drawer.memoirs' => 'Erinnerungen',
			'drawer.archive' => 'Archiv',
			'drawer.settings' => 'Einstellungen',
			'drawer.calendar' => 'Kalender',
			'drawer.export' => 'Exportieren',
			'drawer.import' => 'Importieren',
			'drawer.debug_notifications' => '[DEBUG] Benachrichtigungen',
			'importExport.fileDownloaded' => 'Die Daten wurden auf Ihr Dateisystem gespeichert.',
			'importExport.dataHasBeenImported' => 'Daten aus der Datei wurden importiert.',
			'importExport.error' => 'Es ist ein Fehler beim Importieren der Daten aus der Datei aufgetreten.',
			'welcomeScreen.title' => 'Willkommen bei Inscribe!',
			'welcomeScreen.slides.0' => 'Feiern Sie Freundschaften mit personalisierten Notizen zu Vorlieben, Geburtstagen und Geschenkideen.',
			'welcomeScreen.slides.1' => 'Erstellen Sie durchdachte Geschenkelisten für jeden Freund und machen Sie jeden Anlass unvergesslich.',
			'welcomeScreen.slides.2' => 'Nehmen Sie Ihre Freundschaften überallhin mit - laden Sie Ihre Daten ganz einfach herunter und übertragen Sie sie.',
			'welcomeScreen.slides.3' => 'Ihre Privatsphäre ist wichtig - genießen Sie die volle Offline-Funktionalität und halten Sie Ihre Daten sicher.',
			'welcomeScreen.slides.4' => 'Verpassen Sie nichts - richten Sie Erinnerungen für besondere Anlässe und Ereignisse ein.',
			'welcomeScreen.startButton' => 'Notizen erstellen!',
			'homeScreen.welcome' => 'Willkommen!',
			'homeScreen.no_notes_title' => 'Keine Notizen gefunden!',
			'homeScreen.no_notes_subtitle' => 'Beginnen Sie mit dem Hinzufügen einer Freundesnotiz.',
			'homeScreen.add_note' => 'Notiz hinzufügen',
			'homeScreen.pinned' => 'Angeheftet',
			'homeScreen.other' => 'Andere',
			'homeScreen.search' => 'Suchen',
			'homeScreen.pin_note' => 'Notiz anheften',
			'homeScreen.unpin_note' => 'Notiz lösen',
			'homeScreen.its_birthday_today' => ({required Object name}) => '🎂 Heute ist ${name}\'s Geburtstag!',
			'newNoteScreen.friend_name_hint' => 'Wie heißt er/sie?',
			'newNoteScreen.fields_missing_error' => 'Entschuldigung! Einige Felder fehlen!',
			'newNoteScreen.overview' => 'Übersicht',
			'newNoteScreen.gift_ideas' => 'Geschenkideen',
			'newNoteScreen.gift_ideas_hint' => 'Was würde dieser Person als Geschenk gefallen?',
			'newNoteScreen.reminders' => 'Erinnerungen',
			'newNoteScreen.category' => 'Kategorie',
			'newNoteScreen.categories.0' => 'Freund 😄',
			'newNoteScreen.categories.1' => 'Arbeit 💼',
			'newNoteScreen.categories.2' => 'Familie 🏠',
			'newNoteScreen.categories.3' => 'Schule 🎒',
			'newNoteScreen.categories.4' => 'Romantisch ❤️‍🔥',
			'newNoteScreen.date_of_birth' => 'Geburtsdatum',
			'newNoteScreen.description' => 'Beschreibung',
			'newNoteScreen.description_hint' => 'Fügen Sie hier Ihre Notizen hinzu...',
			'newNoteScreen.coming_soon' => 'Bald verfügbar',
			'newNoteScreen.some_fields_are_missing' => 'Einige Felder fehlen!',
			'newNoteScreen.note_saved' => 'Notiz erfolgreich gespeichert!',
			'newNoteScreen.archive_note' => 'Notiz archivieren',
			'newNoteScreen.archive_note_are_you_sure' => ({required Object name}) => 'Möchten Sie die Notiz für \'${name}\' wirklich archivieren?',
			'newNoteScreen.note_achived' => 'Notiz archiviert!',
			'newNoteScreen.select_image' => 'Bild auswählen',
			'newNoteScreen.remove_image' => 'Bild entfernen',
			'newNoteScreen.randomize_illusrtation' => 'Illustration zufällig auswählen',
			'newNoteScreen.unsaved_changes' => 'Nicht gespeicherte Änderungen',
			'newNoteScreen.save_changes_description' => 'Möchten Sie Ihre Änderungen speichern?',
			'newNoteScreen.save' => 'Speichern',
			'newNoteScreen.discard' => 'Verwerfen',
			'newNoteScreen.add_reminder' => 'Erinnerung hinzufügen',
			'newNoteScreen.annual' => 'Jährlich',
			'newNoteScreen.this_reminder_will_be_repeated_every_year' => 'Diese Erinnerung wird jedes Jahr wiederholt',
			'newNoteScreen.name' => 'Name',
			'newNoteScreen.date' => 'Datum',
			'newNoteScreen.time' => 'Uhrzeit',
			'newNoteScreen.reminder_deleted' => 'Erinnerung gelöscht!',
			'newNoteScreen.no_reminders' => 'Keine Erinnerungen',
			'newNoteScreen.reminder_created' => 'Erinnerung erstellt!',
			'archivedNotes.no_archived_notes' => 'Keine archivierten Notizen!',
			'archivedNotes.no_archived_notes_subtitle' => 'Ihre gelöschten Notizen werden hier angezeigt.',
			'archivedNotes.delete_all_notes_forever_dialog_title' => 'Alle Notizen endgültig löschen',
			'archivedNotes.delete_all_notes_forever_dialog_subtitle' => 'Diese Aktion kann nicht rückgängig gemacht werden. Ihr Archiv wird geleert.',
			'archivedNotes.delete_note_forever_dialog_title' => 'Notiz endgültig löschen',
			'archivedNotes.delete_note_forever_dialog_subtitle' => 'Diese Aktion kann nicht rückgängig gemacht werden. Ihre Notiz wird endgültig gelöscht.',
			'archivedNotes.restore' => 'Wiederherstellen',
			'archivedNotes.delete_forever' => 'Endgültig löschen',
			'archivedNotes.note_deleted' => 'Notiz gelöscht!',
			'archivedNotes.note_restored' => 'Notiz wiederhergestellt!',
			'settingsScreen.app_name_and_version' => ({required Object version}) => 'Inscribe, v${version}',
			'settingsScreen.theme' => 'Thema',
			'settingsScreen.dark' => 'Dunkles Thema',
			'settingsScreen.light' => 'Helles Thema',
			'settingsScreen.language' => 'Sprache',
			'settingsScreen.english' => 'Englisch',
			'settingsScreen.serbian' => 'Serbisch',
			'settingsScreen.notes_view' => 'Notizansicht',
			'settingsScreen.grid_view' => 'Rasteransicht',
			'settingsScreen.list_view' => 'Listenansicht',
			'settingsScreen.use_dark_theme' => 'Dunkles Thema verwenden',
			'settingsScreen.dark_theme_description' => 'Reduziert die Augenbelastung und spart Batterie',
			'settingsScreen.use_grid_view' => 'Rasteransicht verwenden',
			'settingsScreen.grid_view_description' => 'Karten nehmen in der Rasteransicht weniger Platz ein',
			'settingsScreen.visual' => 'Visuell',
			'settingsScreen.system' => 'System',
			'settingsScreen.change_theme' => 'Thema ändern',
			'settingsScreen.apply_change' => 'Änderung anwenden?',
			'settingsScreen.this_action_will_restart_the_app' => 'Diese Aktion wird die App neu starten',
			'settingsScreen.remindersNote' => '🔔 Erinnerungen Hinweis',
			'settingsScreen.remindersNoteDescription' => 'Wenn Sie Erinnerungen für diese App aktiviert haben, stellen Sie bitte sicher, dass Sie sie regelmäßig öffnen, um die geplanten Erinnerungen ordnungsgemäß zu erhalten. Aufgrund der vollständig offline funktionierenden Natur dieser App werden Erinnerungen nicht gesendet, wenn die App über einen längeren Zeitraum nicht geöffnet wird. Vielen Dank für Ihr Verständnis!',
			'calendarScreen.birthday' => 'Geburtstag',
			'calendarScreen.annualEvent' => 'Jährliches Ereignis',
			'calendarScreen.oneTimeReminder' => 'Einmalige Erinnerung',
			_ => null,
		};
	}
}
