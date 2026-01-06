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
class TranslationsFr extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsFr _root = this; // ignore: unused_field

	@override 
	TranslationsFr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFr(meta: meta ?? this.$meta);

	// Translations
	@override String get appName => 'Inscribe';
	@override String get cancel => 'Annuler';
	@override String get confirm => 'Confirmer';
	@override String get undo => 'Annuler';
	@override String get edit => 'Éditer';
	@override String get delete => 'Supprimer';
	@override late final _TranslationsErrorMessagesFr errorMessages = _TranslationsErrorMessagesFr._(_root);
	@override late final _TranslationsDrawerFr drawer = _TranslationsDrawerFr._(_root);
	@override late final _TranslationsImportExportFr importExport = _TranslationsImportExportFr._(_root);
	@override late final _TranslationsWelcomeScreenFr welcomeScreen = _TranslationsWelcomeScreenFr._(_root);
	@override late final _TranslationsHomeScreenFr homeScreen = _TranslationsHomeScreenFr._(_root);
	@override late final _TranslationsNewNoteScreenFr newNoteScreen = _TranslationsNewNoteScreenFr._(_root);
	@override late final _TranslationsArchivedNotesFr archivedNotes = _TranslationsArchivedNotesFr._(_root);
	@override late final _TranslationsSettingsScreenFr settingsScreen = _TranslationsSettingsScreenFr._(_root);
	@override late final _TranslationsAppColorThemesFr appColorThemes = _TranslationsAppColorThemesFr._(_root);
	@override late final _TranslationsCalendarScreenFr calendarScreen = _TranslationsCalendarScreenFr._(_root);
}

// Path: errorMessages
class _TranslationsErrorMessagesFr extends TranslationsErrorMessagesEn {
	_TranslationsErrorMessagesFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get mandatory_field => 'Ce champ est obligatoire.';
}

// Path: drawer
class _TranslationsDrawerFr extends TranslationsDrawerEn {
	_TranslationsDrawerFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

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
class _TranslationsImportExportFr extends TranslationsImportExportEn {
	_TranslationsImportExportFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get fileDownloaded => 'Les données ont été enregistrées sur votre système de fichiers.';
	@override String get dataHasBeenImported => 'Les données du fichier ont été importées.';
	@override String get error => 'Une erreur est survenue lors de l\'importation des données du fichier.';
}

// Path: welcomeScreen
class _TranslationsWelcomeScreenFr extends TranslationsWelcomeScreenEn {
	_TranslationsWelcomeScreenFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

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
class _TranslationsHomeScreenFr extends TranslationsHomeScreenEn {
	_TranslationsHomeScreenFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

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
	@override String its_birthday_today({required Object name}) => '🎂 C\'est l\'anniversaire de ${name} aujourd\'hui !';
}

// Path: newNoteScreen
class _TranslationsNewNoteScreenFr extends TranslationsNewNoteScreenEn {
	_TranslationsNewNoteScreenFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

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
class _TranslationsArchivedNotesFr extends TranslationsArchivedNotesEn {
	_TranslationsArchivedNotesFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

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
class _TranslationsSettingsScreenFr extends TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

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
	@override String get select_theme => 'Sélectionner un thème';
	@override String get apply_change => 'Appliquer le changement ?';
	@override String get this_action_will_restart_the_app => 'Cette action redémarrera l\'application';
	@override String get remindersNote => '🔔 Note de rappels';
	@override String get remindersNoteDescription => 'Si vous avez activé les rappels pour cette application, veuillez vous assurer de l\'ouvrir périodiquement afin de recevoir correctement les rappels programmés. En raison de la nature complètement hors ligne de cette application, les rappels ne seront pas envoyés si l\'application n\'est pas ouverte pendant une longue période. Merci de votre compréhension !';
}

// Path: appColorThemes
class _TranslationsAppColorThemesFr extends TranslationsAppColorThemesEn {
	_TranslationsAppColorThemesFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get defaultLight => 'Par défaut clair';
	@override String get defaultDark => 'Par défaut sombre';
	@override String get strawberryPink => 'Rose fraise [Clair]';
	@override String get forestGreen => 'Vert forêt [Sombre]';
}

// Path: calendarScreen
class _TranslationsCalendarScreenFr extends TranslationsCalendarScreenEn {
	_TranslationsCalendarScreenFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get birthday => 'Anniversaire';
	@override String get annualEvent => 'Événement annuel';
	@override String get oneTimeReminder => 'Rappel unique';
}

/// The flat map containing all translations for locale <fr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsFr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'appName' => 'Inscribe',
			'cancel' => 'Annuler',
			'confirm' => 'Confirmer',
			'undo' => 'Annuler',
			'edit' => 'Éditer',
			'delete' => 'Supprimer',
			'errorMessages.mandatory_field' => 'Ce champ est obligatoire.',
			'drawer.memoirs' => 'Mémoires',
			'drawer.archive' => 'Archive',
			'drawer.settings' => 'Paramètres',
			'drawer.calendar' => 'Calendrier',
			'drawer.export' => 'Exporter',
			'drawer.import' => 'Importer',
			'drawer.debug_notifications' => '[DEBUG] Notifications',
			'importExport.fileDownloaded' => 'Les données ont été enregistrées sur votre système de fichiers.',
			'importExport.dataHasBeenImported' => 'Les données du fichier ont été importées.',
			'importExport.error' => 'Une erreur est survenue lors de l\'importation des données du fichier.',
			'welcomeScreen.title' => 'Bienvenue sur Inscribe !',
			'welcomeScreen.slides.0' => 'Célébrez les amitiés avec des notes personnalisées sur les goûts, les anniversaires et les idées de cadeaux.',
			'welcomeScreen.slides.1' => 'Créez des listes de cadeaux réfléchies pour chaque ami, rendant chaque occasion mémorable.',
			'welcomeScreen.slides.2' => 'Emportez vos amitiés partout - téléchargez et transférez facilement vos données.',
			'welcomeScreen.slides.3' => 'Votre vie privée compte - profitez d\'une fonctionnalité entièrement hors ligne, en gardant vos données sécurisées.',
			'welcomeScreen.slides.4' => 'Ne ratez jamais un événement - définissez des rappels pour les occasions spéciales et événements.',
			'welcomeScreen.startButton' => 'Commencez à noter !',
			'homeScreen.welcome' => 'Bienvenue !',
			'homeScreen.no_notes_title' => 'Aucune note trouvée !',
			'homeScreen.no_notes_subtitle' => 'Commencez par ajouter une mémoire d\'ami.',
			'homeScreen.add_note' => 'Ajouter une note',
			'homeScreen.pinned' => 'Épinglé',
			'homeScreen.other' => 'Autre',
			'homeScreen.search' => 'Rechercher',
			'homeScreen.pin_note' => 'Épingler la note',
			'homeScreen.unpin_note' => 'Détacher la note',
			'homeScreen.its_birthday_today' => ({required Object name}) => '🎂 C\'est l\'anniversaire de ${name} aujourd\'hui !',
			'newNoteScreen.friend_name_hint' => 'Comment s\'appelle-t-il/elle ?',
			'newNoteScreen.fields_missing_error' => 'Désolé ! Certains champs sont manquants !',
			'newNoteScreen.overview' => 'Aperçu',
			'newNoteScreen.gift_ideas' => 'Idées de cadeaux',
			'newNoteScreen.gift_ideas_hint' => 'Que voudrait recevoir cette personne en cadeau ?',
			'newNoteScreen.reminders' => 'Rappels',
			'newNoteScreen.category' => 'Catégorie',
			'newNoteScreen.categories.0' => 'Ami 😄',
			'newNoteScreen.categories.1' => 'Travail 💼',
			'newNoteScreen.categories.2' => 'Famille 🏠',
			'newNoteScreen.categories.3' => 'École 🎒',
			'newNoteScreen.categories.4' => 'Romantique ❤️‍🔥',
			'newNoteScreen.date_of_birth' => 'Date de naissance',
			'newNoteScreen.description' => 'Description',
			'newNoteScreen.description_hint' => 'Ajoutez vos notes ici...',
			'newNoteScreen.coming_soon' => 'Bientôt disponible',
			'newNoteScreen.some_fields_are_missing' => 'Certains champs sont manquants !',
			'newNoteScreen.note_saved' => 'Note enregistrée avec succès !',
			'newNoteScreen.archive_note' => 'Archiver la note',
			'newNoteScreen.archive_note_are_you_sure' => ({required Object name}) => 'Êtes-vous sûr de vouloir archiver la note pour \'${name}\' ?',
			'newNoteScreen.note_achived' => 'Note archivée !',
			'newNoteScreen.select_image' => 'Sélectionner une image',
			'newNoteScreen.remove_image' => 'Supprimer l\'image',
			'newNoteScreen.randomize_illusrtation' => 'Illustration aléatoire',
			'newNoteScreen.unsaved_changes' => 'Modifications non enregistrées',
			'newNoteScreen.save_changes_description' => 'Souhaitez-vous enregistrer vos modifications ?',
			'newNoteScreen.save' => 'Enregistrer',
			'newNoteScreen.discard' => 'Annuler',
			'newNoteScreen.add_reminder' => 'Ajouter un rappel',
			'newNoteScreen.annual' => 'Annuel',
			'newNoteScreen.this_reminder_will_be_repeated_every_year' => 'Ce rappel sera répété chaque année',
			'newNoteScreen.name' => 'Nom',
			'newNoteScreen.date' => 'Date',
			'newNoteScreen.time' => 'Heure',
			'newNoteScreen.reminder_deleted' => 'Rappel supprimé !',
			'newNoteScreen.no_reminders' => 'Aucun rappel',
			'newNoteScreen.reminder_created' => 'Rappel créé !',
			'archivedNotes.no_archived_notes' => 'Aucune note archivée !',
			'archivedNotes.no_archived_notes_subtitle' => 'Vos notes supprimées apparaîtront ici.',
			'archivedNotes.delete_all_notes_forever_dialog_title' => 'Supprimer toutes les notes définitivement',
			'archivedNotes.delete_all_notes_forever_dialog_subtitle' => 'Cette action est irréversible. Votre archive sera vidée.',
			'archivedNotes.delete_note_forever_dialog_title' => 'Supprimer la note définitivement',
			'archivedNotes.delete_note_forever_dialog_subtitle' => 'Cette action est irréversible. Votre note sera supprimée définitivement.',
			'archivedNotes.restore' => 'Restaurer',
			'archivedNotes.delete_forever' => 'Supprimer définitivement',
			'archivedNotes.note_deleted' => 'Note supprimée !',
			'archivedNotes.note_restored' => 'Note restaurée !',
			'settingsScreen.app_name_and_version' => ({required Object version}) => 'Inscribe, v${version}',
			'settingsScreen.theme' => 'Thème',
			'settingsScreen.dark' => 'Thème sombre',
			'settingsScreen.light' => 'Thème clair',
			'settingsScreen.language' => 'Langue',
			'settingsScreen.english' => 'Anglais',
			'settingsScreen.serbian' => 'Serbe',
			'settingsScreen.notes_view' => 'Affichage des notes',
			'settingsScreen.grid_view' => 'Vue en grille',
			'settingsScreen.list_view' => 'Vue en liste',
			'settingsScreen.use_dark_theme' => 'Utiliser le thème sombre',
			'settingsScreen.dark_theme_description' => 'Réduisez la fatigue oculaire et économisez la batterie',
			'settingsScreen.use_grid_view' => 'Utiliser la vue en grille',
			'settingsScreen.grid_view_description' => 'Les cartes prennent moins de place en vue grille',
			'settingsScreen.visual' => 'Visuel',
			'settingsScreen.system' => 'Système',
			'settingsScreen.change_theme' => 'Changer de thème',
			'settingsScreen.select_theme' => 'Sélectionner un thème',
			'settingsScreen.apply_change' => 'Appliquer le changement ?',
			'settingsScreen.this_action_will_restart_the_app' => 'Cette action redémarrera l\'application',
			'settingsScreen.remindersNote' => '🔔 Note de rappels',
			'settingsScreen.remindersNoteDescription' => 'Si vous avez activé les rappels pour cette application, veuillez vous assurer de l\'ouvrir périodiquement afin de recevoir correctement les rappels programmés. En raison de la nature complètement hors ligne de cette application, les rappels ne seront pas envoyés si l\'application n\'est pas ouverte pendant une longue période. Merci de votre compréhension !',
			'appColorThemes.defaultLight' => 'Par défaut clair',
			'appColorThemes.defaultDark' => 'Par défaut sombre',
			'appColorThemes.strawberryPink' => 'Rose fraise [Clair]',
			'appColorThemes.forestGreen' => 'Vert forêt [Sombre]',
			'calendarScreen.birthday' => 'Anniversaire',
			'calendarScreen.annualEvent' => 'Événement annuel',
			'calendarScreen.oneTimeReminder' => 'Rappel unique',
			_ => null,
		};
	}
}
