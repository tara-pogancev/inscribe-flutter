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
class TranslationsIt extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsIt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.it,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <it>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsIt _root = this; // ignore: unused_field

	@override 
	TranslationsIt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsIt(meta: meta ?? this.$meta);

	// Translations
	@override String get appName => 'Inscribe';
	@override String get cancel => 'Annulla';
	@override String get confirm => 'Conferma';
	@override String get undo => 'Annulla';
	@override String get edit => 'Modifica';
	@override String get delete => 'Elimina';
	@override late final _TranslationsErrorMessagesIt errorMessages = _TranslationsErrorMessagesIt._(_root);
	@override late final _TranslationsDrawerIt drawer = _TranslationsDrawerIt._(_root);
	@override late final _TranslationsImportExportIt importExport = _TranslationsImportExportIt._(_root);
	@override late final _TranslationsWelcomeScreenIt welcomeScreen = _TranslationsWelcomeScreenIt._(_root);
	@override late final _TranslationsHomeScreenIt homeScreen = _TranslationsHomeScreenIt._(_root);
	@override late final _TranslationsNewNoteScreenIt newNoteScreen = _TranslationsNewNoteScreenIt._(_root);
	@override late final _TranslationsArchivedNotesIt archivedNotes = _TranslationsArchivedNotesIt._(_root);
	@override late final _TranslationsSettingsScreenIt settingsScreen = _TranslationsSettingsScreenIt._(_root);
	@override late final _TranslationsAppColorThemesIt appColorThemes = _TranslationsAppColorThemesIt._(_root);
	@override late final _TranslationsCalendarScreenIt calendarScreen = _TranslationsCalendarScreenIt._(_root);
}

// Path: errorMessages
class _TranslationsErrorMessagesIt extends TranslationsErrorMessagesEn {
	_TranslationsErrorMessagesIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get mandatory_field => 'Questo campo è obbligatorio.';
}

// Path: drawer
class _TranslationsDrawerIt extends TranslationsDrawerEn {
	_TranslationsDrawerIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

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
class _TranslationsImportExportIt extends TranslationsImportExportEn {
	_TranslationsImportExportIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get fileDownloaded => 'I dati sono stati salvati sul tuo file system.';
	@override String get dataHasBeenImported => 'I dati dal file sono stati importati.';
	@override String get error => 'Si è verificato un errore durante l\'importazione dei dati dal file.';
}

// Path: welcomeScreen
class _TranslationsWelcomeScreenIt extends TranslationsWelcomeScreenEn {
	_TranslationsWelcomeScreenIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

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
class _TranslationsHomeScreenIt extends TranslationsHomeScreenEn {
	_TranslationsHomeScreenIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

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
	@override String its_birthday_today({required Object name}) => '🎂 Oggi è il compleanno di ${name}!';
}

// Path: newNoteScreen
class _TranslationsNewNoteScreenIt extends TranslationsNewNoteScreenEn {
	_TranslationsNewNoteScreenIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

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
class _TranslationsArchivedNotesIt extends TranslationsArchivedNotesEn {
	_TranslationsArchivedNotesIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

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
class _TranslationsSettingsScreenIt extends TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

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
	@override String get select_theme => 'Seleziona tema';
	@override String get apply_change => 'Applicare il cambiamento?';
	@override String get this_action_will_restart_the_app => 'Questa azione riavvierà l\'app';
	@override String get remindersNote => '🔔 Nota sui promemoria';
	@override String get remindersNoteDescription => 'Se hai attivato i promemoria per quest\'app, assicurati di aprirla periodicamente per ricevere correttamente i promemoria programmati. A causa della natura completamente offline di quest\'app, i promemoria non verranno inviati se l\'app non viene aperta per un lungo periodo. Grazie per la comprensione!';
}

// Path: appColorThemes
class _TranslationsAppColorThemesIt extends TranslationsAppColorThemesEn {
	_TranslationsAppColorThemesIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get defaultLight => 'Predefinito Chiaro';
	@override String get defaultDark => 'Predefinito Scuro';
	@override String get strawberryPink => 'Rosa Fragola [Chiaro]';
	@override String get forestGreen => 'Verde Foresta [Scuro]';
}

// Path: calendarScreen
class _TranslationsCalendarScreenIt extends TranslationsCalendarScreenEn {
	_TranslationsCalendarScreenIt._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get birthday => 'Compleanno';
	@override String get annualEvent => 'Evento annuale';
	@override String get oneTimeReminder => 'Promemoria una tantum';
}

/// The flat map containing all translations for locale <it>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsIt {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'appName' => 'Inscribe',
			'cancel' => 'Annulla',
			'confirm' => 'Conferma',
			'undo' => 'Annulla',
			'edit' => 'Modifica',
			'delete' => 'Elimina',
			'errorMessages.mandatory_field' => 'Questo campo è obbligatorio.',
			'drawer.memoirs' => 'Memorie',
			'drawer.archive' => 'Archivio',
			'drawer.settings' => 'Impostazioni',
			'drawer.calendar' => 'Calendario',
			'drawer.export' => 'Esporta',
			'drawer.import' => 'Importa',
			'drawer.debug_notifications' => '[DEBUG] Notifiche',
			'importExport.fileDownloaded' => 'I dati sono stati salvati sul tuo file system.',
			'importExport.dataHasBeenImported' => 'I dati dal file sono stati importati.',
			'importExport.error' => 'Si è verificato un errore durante l\'importazione dei dati dal file.',
			'welcomeScreen.title' => 'Benvenuto su Inscribe!',
			'welcomeScreen.slides.0' => 'Celebra le amicizie con note personalizzate sui gusti, compleanni e idee regalo.',
			'welcomeScreen.slides.1' => 'Crea liste di regali per ogni amico, rendendo ogni occasione memorabile.',
			'welcomeScreen.slides.2' => 'Porta le tue amicizie ovunque - scarica e trasferisci facilmente i tuoi dati.',
			'welcomeScreen.slides.3' => 'La tua privacy è importante - goditi la piena funzionalità offline, mantenendo i tuoi dati al sicuro.',
			'welcomeScreen.slides.4' => 'Non perdere un colpo - imposta promemoria per occasioni speciali ed eventi.',
			'welcomeScreen.startButton' => 'Inizia a prendere appunti!',
			'homeScreen.welcome' => 'Benvenuto!',
			'homeScreen.no_notes_title' => 'Nessuna nota trovata!',
			'homeScreen.no_notes_subtitle' => 'Inizia aggiungendo una memoria di un amico.',
			'homeScreen.add_note' => 'Aggiungi nota',
			'homeScreen.pinned' => 'In evidenza',
			'homeScreen.other' => 'Altro',
			'homeScreen.search' => 'Cerca',
			'homeScreen.pin_note' => 'Metti in evidenza',
			'homeScreen.unpin_note' => 'Togli dall\'evidenza',
			'homeScreen.its_birthday_today' => ({required Object name}) => '🎂 Oggi è il compleanno di ${name}!',
			'newNoteScreen.friend_name_hint' => 'Come si chiama?',
			'newNoteScreen.fields_missing_error' => 'Spiacente! Alcuni campi sono mancanti!',
			'newNoteScreen.overview' => 'Panoramica',
			'newNoteScreen.gift_ideas' => 'Idee regalo',
			'newNoteScreen.gift_ideas_hint' => 'Cosa amerebbe ricevere questa persona?',
			'newNoteScreen.reminders' => 'Promemoria',
			'newNoteScreen.category' => 'Categoria',
			'newNoteScreen.categories.0' => 'Amico 😄',
			'newNoteScreen.categories.1' => 'Lavoro 💼',
			'newNoteScreen.categories.2' => 'Famiglia 🏠',
			'newNoteScreen.categories.3' => 'Scuola 🎒',
			'newNoteScreen.categories.4' => 'Romantico ❤️‍🔥',
			'newNoteScreen.date_of_birth' => 'Data di nascita',
			'newNoteScreen.description' => 'Descrizione',
			'newNoteScreen.description_hint' => 'Aggiungi le note che desideri qui...',
			'newNoteScreen.coming_soon' => 'Prossimamente',
			'newNoteScreen.some_fields_are_missing' => 'Alcuni campi sono mancanti!',
			'newNoteScreen.note_saved' => 'Nota salvata con successo!',
			'newNoteScreen.archive_note' => 'Archivia nota',
			'newNoteScreen.archive_note_are_you_sure' => ({required Object name}) => 'Sei sicuro di voler archiviare la nota per \'${name}?\'',
			'newNoteScreen.note_achived' => 'Nota archiviata!',
			'newNoteScreen.select_image' => 'Seleziona immagine',
			'newNoteScreen.remove_image' => 'Rimuovi immagine',
			'newNoteScreen.randomize_illusrtation' => 'Illustrazione casuale',
			'newNoteScreen.unsaved_changes' => 'Modifiche non salvate',
			'newNoteScreen.save_changes_description' => 'Vuoi salvare le modifiche?',
			'newNoteScreen.save' => 'Salva',
			'newNoteScreen.discard' => 'Scarta',
			'newNoteScreen.add_reminder' => 'Aggiungi promemoria',
			'newNoteScreen.annual' => 'Annuale',
			'newNoteScreen.this_reminder_will_be_repeated_every_year' => 'Questo promemoria verrà ripetuto ogni anno',
			'newNoteScreen.name' => 'Nome',
			'newNoteScreen.date' => 'Data',
			'newNoteScreen.time' => 'Ora',
			'newNoteScreen.reminder_deleted' => 'Promemoria eliminato!',
			'newNoteScreen.no_reminders' => 'Nessun promemoria',
			'newNoteScreen.reminder_created' => 'Promemoria creato!',
			'archivedNotes.no_archived_notes' => 'Nessuna nota archiviata!',
			'archivedNotes.no_archived_notes_subtitle' => 'Le tue note eliminate appariranno qui.',
			'archivedNotes.delete_all_notes_forever_dialog_title' => 'Elimina tutte le note per sempre',
			'archivedNotes.delete_all_notes_forever_dialog_subtitle' => 'Questa azione non può essere annullata. L\'archivio sarà vuoto.',
			'archivedNotes.delete_note_forever_dialog_title' => 'Elimina nota per sempre',
			'archivedNotes.delete_note_forever_dialog_subtitle' => 'Questa azione non può essere annullata. La nota verrà eliminata per sempre.',
			'archivedNotes.restore' => 'Ripristina',
			'archivedNotes.delete_forever' => 'Elimina per sempre',
			'archivedNotes.note_deleted' => 'Nota eliminata!',
			'archivedNotes.note_restored' => 'Nota ripristinata!',
			'settingsScreen.app_name_and_version' => ({required Object version}) => 'Inscribe, v${version}',
			'settingsScreen.theme' => 'Tema',
			'settingsScreen.dark' => 'Tema scuro',
			'settingsScreen.light' => 'Tema chiaro',
			'settingsScreen.language' => 'Lingua',
			'settingsScreen.english' => 'Inglese',
			'settingsScreen.serbian' => 'Serbo',
			'settingsScreen.notes_view' => 'Vista note',
			'settingsScreen.grid_view' => 'Vista a griglia',
			'settingsScreen.list_view' => 'Vista elenco',
			'settingsScreen.use_dark_theme' => 'Usa tema scuro',
			'settingsScreen.dark_theme_description' => 'Riduci l\'affaticamento degli occhi e risparmia batteria',
			'settingsScreen.use_grid_view' => 'Usa vista a griglia',
			'settingsScreen.grid_view_description' => 'Le schede occupano meno spazio nella vista a griglia',
			'settingsScreen.visual' => 'Visuale',
			'settingsScreen.system' => 'Sistema',
			'settingsScreen.change_theme' => 'Cambia tema',
			'settingsScreen.select_theme' => 'Seleziona tema',
			'settingsScreen.apply_change' => 'Applicare il cambiamento?',
			'settingsScreen.this_action_will_restart_the_app' => 'Questa azione riavvierà l\'app',
			'settingsScreen.remindersNote' => '🔔 Nota sui promemoria',
			'settingsScreen.remindersNoteDescription' => 'Se hai attivato i promemoria per quest\'app, assicurati di aprirla periodicamente per ricevere correttamente i promemoria programmati. A causa della natura completamente offline di quest\'app, i promemoria non verranno inviati se l\'app non viene aperta per un lungo periodo. Grazie per la comprensione!',
			'appColorThemes.defaultLight' => 'Predefinito Chiaro',
			'appColorThemes.defaultDark' => 'Predefinito Scuro',
			'appColorThemes.strawberryPink' => 'Rosa Fragola [Chiaro]',
			'appColorThemes.forestGreen' => 'Verde Foresta [Scuro]',
			'calendarScreen.birthday' => 'Compleanno',
			'calendarScreen.annualEvent' => 'Evento annuale',
			'calendarScreen.oneTimeReminder' => 'Promemoria una tantum',
			_ => null,
		};
	}
}
