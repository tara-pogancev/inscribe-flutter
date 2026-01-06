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
class TranslationsEs extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsEs _root = this; // ignore: unused_field

	@override 
	TranslationsEs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEs(meta: meta ?? this.$meta);

	// Translations
	@override String get appName => 'Inscribe';
	@override String get cancel => 'Cancelar';
	@override String get confirm => 'Confirmar';
	@override String get undo => 'Deshacer';
	@override String get edit => 'Editar';
	@override String get delete => 'Eliminar';
	@override late final _TranslationsErrorMessagesEs errorMessages = _TranslationsErrorMessagesEs._(_root);
	@override late final _TranslationsDrawerEs drawer = _TranslationsDrawerEs._(_root);
	@override late final _TranslationsImportExportEs importExport = _TranslationsImportExportEs._(_root);
	@override late final _TranslationsWelcomeScreenEs welcomeScreen = _TranslationsWelcomeScreenEs._(_root);
	@override late final _TranslationsHomeScreenEs homeScreen = _TranslationsHomeScreenEs._(_root);
	@override late final _TranslationsNewNoteScreenEs newNoteScreen = _TranslationsNewNoteScreenEs._(_root);
	@override late final _TranslationsArchivedNotesEs archivedNotes = _TranslationsArchivedNotesEs._(_root);
	@override late final _TranslationsSettingsScreenEs settingsScreen = _TranslationsSettingsScreenEs._(_root);
	@override late final _TranslationsAppColorThemesEs appColorThemes = _TranslationsAppColorThemesEs._(_root);
	@override late final _TranslationsCalendarScreenEs calendarScreen = _TranslationsCalendarScreenEs._(_root);
}

// Path: errorMessages
class _TranslationsErrorMessagesEs extends TranslationsErrorMessagesEn {
	_TranslationsErrorMessagesEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get mandatory_field => 'Este campo es obligatorio.';
}

// Path: drawer
class _TranslationsDrawerEs extends TranslationsDrawerEn {
	_TranslationsDrawerEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

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
class _TranslationsImportExportEs extends TranslationsImportExportEn {
	_TranslationsImportExportEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get fileDownloaded => 'Los datos se han guardado en su sistema de archivos.';
	@override String get dataHasBeenImported => 'Los datos del archivo se han importado.';
	@override String get error => 'Se produjo un error al importar los datos del archivo.';
}

// Path: welcomeScreen
class _TranslationsWelcomeScreenEs extends TranslationsWelcomeScreenEn {
	_TranslationsWelcomeScreenEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

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
class _TranslationsHomeScreenEs extends TranslationsHomeScreenEn {
	_TranslationsHomeScreenEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

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
	@override String its_birthday_today({required Object name}) => '🎂 ¡Es el cumpleaños de ${name} hoy!';
}

// Path: newNoteScreen
class _TranslationsNewNoteScreenEs extends TranslationsNewNoteScreenEn {
	_TranslationsNewNoteScreenEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

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
class _TranslationsArchivedNotesEs extends TranslationsArchivedNotesEn {
	_TranslationsArchivedNotesEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

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
class _TranslationsSettingsScreenEs extends TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

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
	@override String get select_theme => 'Seleccionar tema';
	@override String get apply_change => '¿Aplicar cambio?';
	@override String get this_action_will_restart_the_app => 'Esta acción reiniciará la aplicación';
	@override String get remindersNote => '🔔 Nota de recordatorios';
	@override String get remindersNoteDescription => 'Si has habilitado recordatorios para esta aplicación, asegúrate de abrirla periódicamente para recibir correctamente los recordatorios programados. Debido a la naturaleza completamente offline de esta aplicación, los recordatorios no se enviarán si la aplicación no se abre durante mucho tiempo. ¡Gracias por tu comprensión!';
}

// Path: appColorThemes
class _TranslationsAppColorThemesEs extends TranslationsAppColorThemesEn {
	_TranslationsAppColorThemesEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get defaultLight => 'Predeterminado Claro';
	@override String get defaultDark => 'Predeterminado Oscuro';
	@override String get strawberryPink => 'Rosa Fresa [Claro]';
	@override String get forestGreen => 'Verde Bosque [Oscuro]';
}

// Path: calendarScreen
class _TranslationsCalendarScreenEs extends TranslationsCalendarScreenEn {
	_TranslationsCalendarScreenEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get birthday => 'Cumpleaños';
	@override String get annualEvent => 'Evento anual';
	@override String get oneTimeReminder => 'Recordatorio único';
}

/// The flat map containing all translations for locale <es>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEs {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'appName' => 'Inscribe',
			'cancel' => 'Cancelar',
			'confirm' => 'Confirmar',
			'undo' => 'Deshacer',
			'edit' => 'Editar',
			'delete' => 'Eliminar',
			'errorMessages.mandatory_field' => 'Este campo es obligatorio.',
			'drawer.memoirs' => 'Memorias',
			'drawer.archive' => 'Archivo',
			'drawer.settings' => 'Configuración',
			'drawer.calendar' => 'Calendario',
			'drawer.export' => 'Exportar',
			'drawer.import' => 'Importar',
			'drawer.debug_notifications' => '[DEBUG] Notificaciones',
			'importExport.fileDownloaded' => 'Los datos se han guardado en su sistema de archivos.',
			'importExport.dataHasBeenImported' => 'Los datos del archivo se han importado.',
			'importExport.error' => 'Se produjo un error al importar los datos del archivo.',
			'welcomeScreen.title' => '¡Bienvenido a Inscribe!',
			'welcomeScreen.slides.0' => 'Celebra las amistades con notas personalizadas sobre gustos, cumpleaños e ideas de regalos.',
			'welcomeScreen.slides.1' => 'Crea listas de regalos pensadas para cada amigo, haciendo que cada ocasión sea memorable.',
			'welcomeScreen.slides.2' => 'Lleva tus amistades a donde quieras: descarga y transfiere tus datos fácilmente.',
			'welcomeScreen.slides.3' => 'Tu privacidad es importante: disfruta de la funcionalidad totalmente offline, manteniendo tus datos seguros.',
			'welcomeScreen.slides.4' => 'No te pierdas nada: establece recordatorios para ocasiones especiales y eventos.',
			'welcomeScreen.startButton' => '¡Comienza a anotar!',
			'homeScreen.welcome' => '¡Bienvenido!',
			'homeScreen.no_notes_title' => '¡No se encontraron notas!',
			'homeScreen.no_notes_subtitle' => 'Comienza agregando una memoria de un amigo.',
			'homeScreen.add_note' => 'Agregar nota',
			'homeScreen.pinned' => 'Fijado',
			'homeScreen.other' => 'Otro',
			'homeScreen.search' => 'Buscar',
			'homeScreen.pin_note' => 'Fijar nota',
			'homeScreen.unpin_note' => 'Desfijar nota',
			'homeScreen.its_birthday_today' => ({required Object name}) => '🎂 ¡Es el cumpleaños de ${name} hoy!',
			'newNoteScreen.friend_name_hint' => '¿Cómo se llama?',
			'newNoteScreen.fields_missing_error' => '¡Lo siento! Faltan algunos campos.',
			'newNoteScreen.overview' => 'Visión general',
			'newNoteScreen.gift_ideas' => 'Ideas de regalo',
			'newNoteScreen.gift_ideas_hint' => '¿Qué le gustaría recibir como regalo?',
			'newNoteScreen.reminders' => 'Recordatorios',
			'newNoteScreen.category' => 'Categoría',
			'newNoteScreen.categories.0' => 'Amigo 😄',
			'newNoteScreen.categories.1' => 'Trabajo 💼',
			'newNoteScreen.categories.2' => 'Familia 🏠',
			'newNoteScreen.categories.3' => 'Escuela 🎒',
			'newNoteScreen.categories.4' => 'Romántico ❤️‍🔥',
			'newNoteScreen.date_of_birth' => 'Fecha de nacimiento',
			'newNoteScreen.description' => 'Descripción',
			'newNoteScreen.description_hint' => 'Añade aquí las notas que desees...',
			'newNoteScreen.coming_soon' => 'Próximamente',
			'newNoteScreen.some_fields_are_missing' => '¡Faltan algunos campos!',
			'newNoteScreen.note_saved' => '¡Nota guardada con éxito!',
			'newNoteScreen.archive_note' => 'Archivar nota',
			'newNoteScreen.archive_note_are_you_sure' => ({required Object name}) => '¿Estás seguro de que deseas archivar la nota para \'${name}\'?',
			'newNoteScreen.note_achived' => '¡Nota archivada!',
			'newNoteScreen.select_image' => 'Seleccionar imagen',
			'newNoteScreen.remove_image' => 'Eliminar imagen',
			'newNoteScreen.randomize_illusrtation' => 'Aleatorizar ilustración',
			'newNoteScreen.unsaved_changes' => 'Cambios no guardados',
			'newNoteScreen.save_changes_description' => '¿Deseas guardar tus cambios?',
			'newNoteScreen.save' => 'Guardar',
			'newNoteScreen.discard' => 'Descartar',
			'newNoteScreen.add_reminder' => 'Agregar recordatorio',
			'newNoteScreen.annual' => 'Anual',
			'newNoteScreen.this_reminder_will_be_repeated_every_year' => 'Este recordatorio se repetirá todos los años',
			'newNoteScreen.name' => 'Nombre',
			'newNoteScreen.date' => 'Fecha',
			'newNoteScreen.time' => 'Hora',
			'newNoteScreen.reminder_deleted' => '¡Recordatorio eliminado!',
			'newNoteScreen.no_reminders' => 'Sin recordatorios',
			'newNoteScreen.reminder_created' => '¡Recordatorio creado!',
			'archivedNotes.no_archived_notes' => '¡No hay notas archivadas!',
			'archivedNotes.no_archived_notes_subtitle' => 'Tus notas eliminadas aparecerán aquí.',
			'archivedNotes.delete_all_notes_forever_dialog_title' => 'Eliminar todas las notas para siempre',
			'archivedNotes.delete_all_notes_forever_dialog_subtitle' => 'Esta acción no se puede deshacer. Tu archivo se vaciará.',
			'archivedNotes.delete_note_forever_dialog_title' => 'Eliminar nota para siempre',
			'archivedNotes.delete_note_forever_dialog_subtitle' => 'Esta acción no se puede deshacer. Tu nota se eliminará para siempre.',
			'archivedNotes.restore' => 'Restaurar',
			'archivedNotes.delete_forever' => 'Eliminar para siempre',
			'archivedNotes.note_deleted' => '¡Nota eliminada!',
			'archivedNotes.note_restored' => '¡Nota restaurada!',
			'settingsScreen.app_name_and_version' => ({required Object version}) => 'Inscribe, v${version}',
			'settingsScreen.theme' => 'Tema',
			'settingsScreen.dark' => 'Tema oscuro',
			'settingsScreen.light' => 'Tema claro',
			'settingsScreen.language' => 'Idioma',
			'settingsScreen.english' => 'Inglés',
			'settingsScreen.serbian' => 'Serbio',
			'settingsScreen.notes_view' => 'Vista de notas',
			'settingsScreen.grid_view' => 'Vista de cuadrícula',
			'settingsScreen.list_view' => 'Vista de lista',
			'settingsScreen.use_dark_theme' => 'Usar tema oscuro',
			'settingsScreen.dark_theme_description' => 'Reduce el esfuerzo visual y ahorra batería',
			'settingsScreen.use_grid_view' => 'Usar vista de cuadrícula',
			'settingsScreen.grid_view_description' => 'Las tarjetas ocupan menos espacio en la vista de cuadrícula',
			'settingsScreen.visual' => 'Visual',
			'settingsScreen.system' => 'Sistema',
			'settingsScreen.change_theme' => 'Cambiar tema',
			'settingsScreen.select_theme' => 'Seleccionar tema',
			'settingsScreen.apply_change' => '¿Aplicar cambio?',
			'settingsScreen.this_action_will_restart_the_app' => 'Esta acción reiniciará la aplicación',
			'settingsScreen.remindersNote' => '🔔 Nota de recordatorios',
			'settingsScreen.remindersNoteDescription' => 'Si has habilitado recordatorios para esta aplicación, asegúrate de abrirla periódicamente para recibir correctamente los recordatorios programados. Debido a la naturaleza completamente offline de esta aplicación, los recordatorios no se enviarán si la aplicación no se abre durante mucho tiempo. ¡Gracias por tu comprensión!',
			'appColorThemes.defaultLight' => 'Predeterminado Claro',
			'appColorThemes.defaultDark' => 'Predeterminado Oscuro',
			'appColorThemes.strawberryPink' => 'Rosa Fresa [Claro]',
			'appColorThemes.forestGreen' => 'Verde Bosque [Oscuro]',
			'calendarScreen.birthday' => 'Cumpleaños',
			'calendarScreen.annualEvent' => 'Evento anual',
			'calendarScreen.oneTimeReminder' => 'Recordatorio único',
			_ => null,
		};
	}
}
