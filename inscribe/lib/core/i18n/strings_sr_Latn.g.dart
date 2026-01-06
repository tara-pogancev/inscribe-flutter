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
class TranslationsSrLatn extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsSrLatn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.srLatn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <sr-Latn>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsSrLatn _root = this; // ignore: unused_field

	@override 
	TranslationsSrLatn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsSrLatn(meta: meta ?? this.$meta);

	// Translations
	@override String get appName => 'Inscribe';
	@override String get cancel => 'Otkaži';
	@override String get confirm => 'Potvrdi';
	@override String get undo => 'Poništi';
	@override String get edit => 'Izmeni';
	@override String get delete => 'Obriši';
	@override late final _TranslationsErrorMessagesSrLatn errorMessages = _TranslationsErrorMessagesSrLatn._(_root);
	@override late final _TranslationsDrawerSrLatn drawer = _TranslationsDrawerSrLatn._(_root);
	@override late final _TranslationsImportExportSrLatn importExport = _TranslationsImportExportSrLatn._(_root);
	@override late final _TranslationsWelcomeScreenSrLatn welcomeScreen = _TranslationsWelcomeScreenSrLatn._(_root);
	@override late final _TranslationsHomeScreenSrLatn homeScreen = _TranslationsHomeScreenSrLatn._(_root);
	@override late final _TranslationsNewNoteScreenSrLatn newNoteScreen = _TranslationsNewNoteScreenSrLatn._(_root);
	@override late final _TranslationsArchivedNotesSrLatn archivedNotes = _TranslationsArchivedNotesSrLatn._(_root);
	@override late final _TranslationsSettingsScreenSrLatn settingsScreen = _TranslationsSettingsScreenSrLatn._(_root);
	@override late final _TranslationsCalendarScreenSrLatn calendarScreen = _TranslationsCalendarScreenSrLatn._(_root);
}

// Path: errorMessages
class _TranslationsErrorMessagesSrLatn extends TranslationsErrorMessagesEn {
	_TranslationsErrorMessagesSrLatn._(TranslationsSrLatn root) : this._root = root, super.internal(root);

	final TranslationsSrLatn _root; // ignore: unused_field

	// Translations
	@override String get mandatory_field => 'Ovo polje je obavezno.';
}

// Path: drawer
class _TranslationsDrawerSrLatn extends TranslationsDrawerEn {
	_TranslationsDrawerSrLatn._(TranslationsSrLatn root) : this._root = root, super.internal(root);

	final TranslationsSrLatn _root; // ignore: unused_field

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
class _TranslationsImportExportSrLatn extends TranslationsImportExportEn {
	_TranslationsImportExportSrLatn._(TranslationsSrLatn root) : this._root = root, super.internal(root);

	final TranslationsSrLatn _root; // ignore: unused_field

	// Translations
	@override String get fileDownloaded => 'Podaci su sačuvani na uređaju.';
	@override String get dataHasBeenImported => 'Podaci su uvezeni iz dokumenta.';
	@override String get error => 'Došlo je do greške prilikom uvoza podataka.';
}

// Path: welcomeScreen
class _TranslationsWelcomeScreenSrLatn extends TranslationsWelcomeScreenEn {
	_TranslationsWelcomeScreenSrLatn._(TranslationsSrLatn root) : this._root = root, super.internal(root);

	final TranslationsSrLatn _root; // ignore: unused_field

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
class _TranslationsHomeScreenSrLatn extends TranslationsHomeScreenEn {
	_TranslationsHomeScreenSrLatn._(TranslationsSrLatn root) : this._root = root, super.internal(root);

	final TranslationsSrLatn _root; // ignore: unused_field

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
	@override String its_birthday_today({required Object name}) => '🎂 Danas je rođendan ${name}!';
}

// Path: newNoteScreen
class _TranslationsNewNoteScreenSrLatn extends TranslationsNewNoteScreenEn {
	_TranslationsNewNoteScreenSrLatn._(TranslationsSrLatn root) : this._root = root, super.internal(root);

	final TranslationsSrLatn _root; // ignore: unused_field

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
class _TranslationsArchivedNotesSrLatn extends TranslationsArchivedNotesEn {
	_TranslationsArchivedNotesSrLatn._(TranslationsSrLatn root) : this._root = root, super.internal(root);

	final TranslationsSrLatn _root; // ignore: unused_field

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
class _TranslationsSettingsScreenSrLatn extends TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenSrLatn._(TranslationsSrLatn root) : this._root = root, super.internal(root);

	final TranslationsSrLatn _root; // ignore: unused_field

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
	@override String get remindersNote => '🔔 Napomena o podsetnicima';
	@override String get remindersNoteDescription => 'Ako ste aktivirali podsetnike za ovu aplikaciju, molimo vas da je periodično otvarate kako biste ispravno primali zakazane podsetnike. Zbog potpuno offline prirode ove aplikacije, podsetnici neće biti poslati ako aplikacija nije otvorena duže vreme. Hvala na razumevanju!';
}

// Path: calendarScreen
class _TranslationsCalendarScreenSrLatn extends TranslationsCalendarScreenEn {
	_TranslationsCalendarScreenSrLatn._(TranslationsSrLatn root) : this._root = root, super.internal(root);

	final TranslationsSrLatn _root; // ignore: unused_field

	// Translations
	@override String get birthday => 'Rođendan';
	@override String get annualEvent => 'Godišnji događaj';
	@override String get oneTimeReminder => 'Jednokratni podsetnik';
}

/// The flat map containing all translations for locale <sr-Latn>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsSrLatn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'appName' => 'Inscribe',
			'cancel' => 'Otkaži',
			'confirm' => 'Potvrdi',
			'undo' => 'Poništi',
			'edit' => 'Izmeni',
			'delete' => 'Obriši',
			'errorMessages.mandatory_field' => 'Ovo polje je obavezno.',
			'drawer.memoirs' => 'Memoari',
			'drawer.archive' => 'Arhiva',
			'drawer.settings' => 'Podešavanja',
			'drawer.calendar' => 'Kalendar',
			'drawer.export' => 'Izvoz podataka',
			'drawer.import' => 'Uvoz podataka',
			'drawer.debug_notifications' => '[DEBUG] Obaveštenja',
			'importExport.fileDownloaded' => 'Podaci su sačuvani na uređaju.',
			'importExport.dataHasBeenImported' => 'Podaci su uvezeni iz dokumenta.',
			'importExport.error' => 'Došlo je do greške prilikom uvoza podataka.',
			'welcomeScreen.title' => 'Dobrodošli u Inscribe!',
			'welcomeScreen.slides.0' => 'Proslavite prijateljstva sa personalizovanim beleškama o omiljenim stvarima, rođendanima i idejama za poklone.',
			'welcomeScreen.slides.1' => 'Kreirajte pažljivo odabrane liste poklona za svakog prijatelja, čineći svaki događaj nezaboravnim.',
			'welcomeScreen.slides.2' => 'Nosite svoja prijateljstva svuda - lako preuzmite i prebacite svoje podatke.',
			'welcomeScreen.slides.3' => 'Vaša privatnost je važna - uživajte u potpunoj offline funkcionalnosti, čuvajući svoje podatke sigurnim.',
			'welcomeScreen.slides.4' => 'Nikada ne propustite važan trenutak - postavite podsetnike za posebne događaje i prilike.',
			'welcomeScreen.startButton' => 'Započni beleženje!',
			'homeScreen.welcome' => 'Dobrodošli!',
			'homeScreen.no_notes_title' => 'Nema beležaka!',
			'homeScreen.no_notes_subtitle' => 'Počnite dodavanjem memoara o prijatelju.',
			'homeScreen.add_note' => 'Dodaj belešku',
			'homeScreen.pinned' => 'Prikačene',
			'homeScreen.other' => 'Ostalo',
			'homeScreen.search' => 'Pretraga',
			'homeScreen.pin_note' => 'Prikvači belešku',
			'homeScreen.unpin_note' => 'Otkvači belešku',
			'homeScreen.its_birthday_today' => ({required Object name}) => '🎂 Danas je rođendan ${name}!',
			'newNoteScreen.friend_name_hint' => 'Ime',
			'newNoteScreen.fields_missing_error' => 'Izvinjavamo se! Neka polja nedostaju!',
			'newNoteScreen.overview' => 'Pregled',
			'newNoteScreen.gift_ideas' => 'Ideje za poklone',
			'newNoteScreen.gift_ideas_hint' => 'Šta bi ova osoba volela kao poklon?',
			'newNoteScreen.reminders' => 'Podsetnici',
			'newNoteScreen.category' => 'Kategorija',
			'newNoteScreen.categories.0' => 'Prijatelj 😄',
			'newNoteScreen.categories.1' => 'Posao 💼',
			'newNoteScreen.categories.2' => 'Porodica 🏠',
			'newNoteScreen.categories.3' => 'Škola 🎒',
			'newNoteScreen.categories.4' => 'Partner ❤️‍🔥',
			'newNoteScreen.date_of_birth' => 'Datum rođenja',
			'newNoteScreen.description' => 'Opis',
			'newNoteScreen.description_hint' => 'Dodajte bilo koje beleške ovde...',
			'newNoteScreen.coming_soon' => 'Uskoro',
			'newNoteScreen.some_fields_are_missing' => 'Neka polja nedostaju!',
			'newNoteScreen.note_saved' => 'Beleška uspešno sačuvana!',
			'newNoteScreen.archive_note' => 'Arhiviraj belešku',
			'newNoteScreen.archive_note_are_you_sure' => ({required Object name}) => 'Da li ste sigurni da želite da arhivirate belešku za \'${name}?\'',
			'newNoteScreen.note_achived' => 'Beleška arhivirana!',
			'newNoteScreen.select_image' => 'Izaberi sliku',
			'newNoteScreen.remove_image' => 'Ukloni sliku',
			'newNoteScreen.randomize_illusrtation' => 'Nasuična ilustracija',
			'newNoteScreen.unsaved_changes' => 'Nesačuvane izmene',
			'newNoteScreen.save_changes_description' => 'Da li želite da sačuvate vaše izmene?',
			'newNoteScreen.save' => 'Sačuvaj',
			'newNoteScreen.discard' => 'Odbaci',
			'newNoteScreen.add_reminder' => 'Dodaj podsetnik',
			'newNoteScreen.annual' => 'Godišnji',
			'newNoteScreen.this_reminder_will_be_repeated_every_year' => 'Podsetnik će biti ponovljen svake godine',
			'newNoteScreen.name' => 'Naziv',
			'newNoteScreen.date' => 'Datum',
			'newNoteScreen.time' => 'Vreme',
			'newNoteScreen.reminder_deleted' => 'Podsetnik obrisan!',
			'newNoteScreen.no_reminders' => 'Nema podsetnika',
			'newNoteScreen.reminder_created' => 'Podsetnik kreiran!',
			'archivedNotes.no_archived_notes' => 'Nema arhiviranih beležaka!',
			'archivedNotes.no_archived_notes_subtitle' => 'Vaše obrisane beleške će se pojaviti ovde.',
			'archivedNotes.delete_all_notes_forever_dialog_title' => 'Obriši sve beleške zauvek',
			'archivedNotes.delete_all_notes_forever_dialog_subtitle' => 'Ova radnja se ne može poništiti. Vaša arhiva će biti ispražnjena.',
			'archivedNotes.delete_note_forever_dialog_title' => 'Obriši belešku zauvek',
			'archivedNotes.delete_note_forever_dialog_subtitle' => 'Ova radnja se ne može poništiti. Vaša beleška će biti obrisana zauvek.',
			'archivedNotes.restore' => 'Vrati',
			'archivedNotes.delete_forever' => 'Obriši zauvek',
			'archivedNotes.note_deleted' => 'Beleška obrisana!',
			'archivedNotes.note_restored' => 'Beleška vraćena!',
			'settingsScreen.app_name_and_version' => ({required Object version}) => 'Inscribe, v${version}',
			'settingsScreen.theme' => 'Tema',
			'settingsScreen.dark' => 'Tamna tema',
			'settingsScreen.light' => 'Svetla tema',
			'settingsScreen.language' => 'Jezik',
			'settingsScreen.english' => 'Engleski',
			'settingsScreen.serbian' => 'Srpski',
			'settingsScreen.notes_view' => 'Pregled beleški',
			'settingsScreen.grid_view' => 'Mrežni prikaz',
			'settingsScreen.list_view' => 'Lista prikaz',
			'settingsScreen.use_dark_theme' => 'Koristi tamnu temu',
			'settingsScreen.dark_theme_description' => 'Smanjenje naprezanja očiju i ušteda baterije',
			'settingsScreen.use_grid_view' => 'Koristi tabelarni prikaz',
			'settingsScreen.grid_view_description' => 'Kartice zauzimaju manje prostora',
			'settingsScreen.visual' => 'Vizuali',
			'settingsScreen.system' => 'Sistem',
			'settingsScreen.change_theme' => 'Promeni temu',
			'settingsScreen.apply_change' => 'Primeni promenu?',
			'settingsScreen.this_action_will_restart_the_app' => 'Ova akcija će restartovati aplikaciju',
			'settingsScreen.remindersNote' => '🔔 Napomena o podsetnicima',
			'settingsScreen.remindersNoteDescription' => 'Ako ste aktivirali podsetnike za ovu aplikaciju, molimo vas da je periodično otvarate kako biste ispravno primali zakazane podsetnike. Zbog potpuno offline prirode ove aplikacije, podsetnici neće biti poslati ako aplikacija nije otvorena duže vreme. Hvala na razumevanju!',
			'calendarScreen.birthday' => 'Rođendan',
			'calendarScreen.annualEvent' => 'Godišnji događaj',
			'calendarScreen.oneTimeReminder' => 'Jednokratni podsetnik',
			_ => null,
		};
	}
}
