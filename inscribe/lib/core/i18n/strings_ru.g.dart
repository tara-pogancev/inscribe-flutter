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
class TranslationsRu extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsRu _root = this; // ignore: unused_field

	@override 
	TranslationsRu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRu(meta: meta ?? this.$meta);

	// Translations
	@override String get appName => 'Inscribe';
	@override String get cancel => 'Отмена';
	@override String get confirm => 'Подтвердить';
	@override String get undo => 'Отменить';
	@override String get edit => 'Редактировать';
	@override String get delete => 'Удалить';
	@override late final _TranslationsErrorMessagesRu errorMessages = _TranslationsErrorMessagesRu._(_root);
	@override late final _TranslationsDrawerRu drawer = _TranslationsDrawerRu._(_root);
	@override late final _TranslationsImportExportRu importExport = _TranslationsImportExportRu._(_root);
	@override late final _TranslationsWelcomeScreenRu welcomeScreen = _TranslationsWelcomeScreenRu._(_root);
	@override late final _TranslationsHomeScreenRu homeScreen = _TranslationsHomeScreenRu._(_root);
	@override late final _TranslationsNewNoteScreenRu newNoteScreen = _TranslationsNewNoteScreenRu._(_root);
	@override late final _TranslationsArchivedNotesRu archivedNotes = _TranslationsArchivedNotesRu._(_root);
	@override late final _TranslationsSettingsScreenRu settingsScreen = _TranslationsSettingsScreenRu._(_root);
	@override late final _TranslationsAppColorThemesRu appColorThemes = _TranslationsAppColorThemesRu._(_root);
	@override late final _TranslationsCalendarScreenRu calendarScreen = _TranslationsCalendarScreenRu._(_root);
}

// Path: errorMessages
class _TranslationsErrorMessagesRu extends TranslationsErrorMessagesEn {
	_TranslationsErrorMessagesRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get mandatory_field => 'Это поле обязательно.';
}

// Path: drawer
class _TranslationsDrawerRu extends TranslationsDrawerEn {
	_TranslationsDrawerRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

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
class _TranslationsImportExportRu extends TranslationsImportExportEn {
	_TranslationsImportExportRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get fileDownloaded => 'Данные сохранены в вашу файловую систему.';
	@override String get dataHasBeenImported => 'Данные из файла были импортированы.';
	@override String get error => 'Произошла ошибка при импорте данных из файла.';
}

// Path: welcomeScreen
class _TranslationsWelcomeScreenRu extends TranslationsWelcomeScreenEn {
	_TranslationsWelcomeScreenRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

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
class _TranslationsHomeScreenRu extends TranslationsHomeScreenEn {
	_TranslationsHomeScreenRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

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
	@override String its_birthday_today({required Object name}) => '🎂 Сегодня день рождения ${name}!';
}

// Path: newNoteScreen
class _TranslationsNewNoteScreenRu extends TranslationsNewNoteScreenEn {
	_TranslationsNewNoteScreenRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

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
class _TranslationsArchivedNotesRu extends TranslationsArchivedNotesEn {
	_TranslationsArchivedNotesRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

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
class _TranslationsSettingsScreenRu extends TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

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
	@override String get select_theme => 'Выберите тему';
	@override String get apply_change => 'Применить изменения?';
	@override String get this_action_will_restart_the_app => 'Это действие перезапустит приложение';
	@override String get remindersNote => '🔔 Заметка о напоминаниях';
	@override String get remindersNoteDescription => 'Если вы включили напоминания для этого приложения, пожалуйста, убедитесь, что периодически открываете его, чтобы получать запланированные напоминания должным образом. Из-за полностью оффлайн режима работы этого приложения, напоминания не будут отправляться, если приложение не открывалось долгое время. Спасибо за понимание!';
}

// Path: appColorThemes
class _TranslationsAppColorThemesRu extends TranslationsAppColorThemesEn {
	_TranslationsAppColorThemesRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get defaultLight => 'Стандартная светлая';
	@override String get defaultDark => 'Стандартная тёмная';
	@override String get strawberryPink => 'Клубничный розовый [Светлый]';
	@override String get forestGreen => 'Лесной зелёный [Тёмный]';
}

// Path: calendarScreen
class _TranslationsCalendarScreenRu extends TranslationsCalendarScreenEn {
	_TranslationsCalendarScreenRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get birthday => 'День рождения';
	@override String get annualEvent => 'Ежегодное событие';
	@override String get oneTimeReminder => 'Однократное напоминание';
}

/// The flat map containing all translations for locale <ru>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsRu {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'appName' => 'Inscribe',
			'cancel' => 'Отмена',
			'confirm' => 'Подтвердить',
			'undo' => 'Отменить',
			'edit' => 'Редактировать',
			'delete' => 'Удалить',
			'errorMessages.mandatory_field' => 'Это поле обязательно.',
			'drawer.memoirs' => 'Воспоминания',
			'drawer.archive' => 'Архив',
			'drawer.settings' => 'Настройки',
			'drawer.calendar' => 'Календарь',
			'drawer.export' => 'Экспорт',
			'drawer.import' => 'Импорт',
			'drawer.debug_notifications' => '[DEBUG] Уведомления',
			'importExport.fileDownloaded' => 'Данные сохранены в вашу файловую систему.',
			'importExport.dataHasBeenImported' => 'Данные из файла были импортированы.',
			'importExport.error' => 'Произошла ошибка при импорте данных из файла.',
			'welcomeScreen.title' => 'Добро пожаловать в Inscribe!',
			'welcomeScreen.slides.0' => 'Отмечайте дружбу с персонализированными заметками о вкусах, днях рождения и идеях для подарков.',
			'welcomeScreen.slides.1' => 'Составляйте продуманные списки подарков для каждого друга, делая каждый случай запоминающимся.',
			'welcomeScreen.slides.2' => 'Берите свои дружбы с собой - легко загружайте и переносите данные.',
			'welcomeScreen.slides.3' => 'Ваша конфиденциальность важна - наслаждайтесь полной офлайн-функциональностью, сохраняя ваши данные в безопасности.',
			'welcomeScreen.slides.4' => 'Не пропустите важные события - устанавливайте напоминания для особых событий и мероприятий.',
			'welcomeScreen.startButton' => 'Начать записи!',
			'homeScreen.welcome' => 'Добро пожаловать!',
			'homeScreen.no_notes_title' => 'Заметок не найдено!',
			'homeScreen.no_notes_subtitle' => 'Начните с добавления воспоминаний о друге.',
			'homeScreen.add_note' => 'Добавить заметку',
			'homeScreen.pinned' => 'Закрепленные',
			'homeScreen.other' => 'Другие',
			'homeScreen.search' => 'Поиск',
			'homeScreen.pin_note' => 'Закрепить заметку',
			'homeScreen.unpin_note' => 'Открепить заметку',
			'homeScreen.its_birthday_today' => ({required Object name}) => '🎂 Сегодня день рождения ${name}!',
			'newNoteScreen.friend_name_hint' => 'Как его зовут?',
			'newNoteScreen.fields_missing_error' => 'Извините! Некоторые поля отсутствуют!',
			'newNoteScreen.overview' => 'Обзор',
			'newNoteScreen.gift_ideas' => 'Идеи подарков',
			'newNoteScreen.gift_ideas_hint' => 'Что бы понравилось этому человеку в подарок?',
			'newNoteScreen.reminders' => 'Напоминания',
			'newNoteScreen.category' => 'Категория',
			'newNoteScreen.categories.0' => 'Друг 😄',
			'newNoteScreen.categories.1' => 'Работа 💼',
			'newNoteScreen.categories.2' => 'Семья 🏠',
			'newNoteScreen.categories.3' => 'Школа 🎒',
			'newNoteScreen.categories.4' => 'Романтика ❤️‍🔥',
			'newNoteScreen.date_of_birth' => 'Дата рождения',
			'newNoteScreen.description' => 'Описание',
			'newNoteScreen.description_hint' => 'Добавьте любые заметки здесь...',
			'newNoteScreen.coming_soon' => 'Скоро будет',
			'newNoteScreen.some_fields_are_missing' => 'Некоторые поля отсутствуют!',
			'newNoteScreen.note_saved' => 'Заметка успешно сохранена!',
			'newNoteScreen.archive_note' => 'Архивировать заметку',
			'newNoteScreen.archive_note_are_you_sure' => ({required Object name}) => 'Вы уверены, что хотите архивировать заметку для \'${name}?\'',
			'newNoteScreen.note_achived' => 'Заметка архивирована!',
			'newNoteScreen.select_image' => 'Выбрать изображение',
			'newNoteScreen.remove_image' => 'Удалить изображение',
			'newNoteScreen.randomize_illusrtation' => 'Случайная иллюстрация',
			'newNoteScreen.unsaved_changes' => 'Несохраненные изменения',
			'newNoteScreen.save_changes_description' => 'Вы хотите сохранить изменения?',
			'newNoteScreen.save' => 'Сохранить',
			'newNoteScreen.discard' => 'Отменить',
			'newNoteScreen.add_reminder' => 'Добавить напоминание',
			'newNoteScreen.annual' => 'Ежегодно',
			'newNoteScreen.this_reminder_will_be_repeated_every_year' => 'Это напоминание будет повторяться каждый год',
			'newNoteScreen.name' => 'Имя',
			'newNoteScreen.date' => 'Дата',
			'newNoteScreen.time' => 'Время',
			'newNoteScreen.reminder_deleted' => 'Напоминание удалено!',
			'newNoteScreen.no_reminders' => 'Нет напоминаний',
			'newNoteScreen.reminder_created' => 'Напоминание создано!',
			'archivedNotes.no_archived_notes' => 'Архивных заметок нет!',
			'archivedNotes.no_archived_notes_subtitle' => 'Ваши удаленные заметки появятся здесь.',
			'archivedNotes.delete_all_notes_forever_dialog_title' => 'Удалить все заметки навсегда',
			'archivedNotes.delete_all_notes_forever_dialog_subtitle' => 'Это действие не может быть отменено. Архив будет очищен.',
			'archivedNotes.delete_note_forever_dialog_title' => 'Удалить заметку навсегда',
			'archivedNotes.delete_note_forever_dialog_subtitle' => 'Это действие не может быть отменено. Заметка будет удалена навсегда.',
			'archivedNotes.restore' => 'Восстановить',
			'archivedNotes.delete_forever' => 'Удалить навсегда',
			'archivedNotes.note_deleted' => 'Заметка удалена!',
			'archivedNotes.note_restored' => 'Заметка восстановлена!',
			'settingsScreen.app_name_and_version' => ({required Object version}) => 'Inscribe, v${version}',
			'settingsScreen.theme' => 'Тема',
			'settingsScreen.dark' => 'Темная тема',
			'settingsScreen.light' => 'Светлая тема',
			'settingsScreen.language' => 'Язык',
			'settingsScreen.english' => 'Английский',
			'settingsScreen.serbian' => 'Сербский',
			'settingsScreen.notes_view' => 'Просмотр заметок',
			'settingsScreen.grid_view' => 'Сетка',
			'settingsScreen.list_view' => 'Список',
			'settingsScreen.use_dark_theme' => 'Использовать темную тему',
			'settingsScreen.dark_theme_description' => 'Снижает нагрузку на глаза и экономит заряд батареи',
			'settingsScreen.use_grid_view' => 'Использовать вид сетки',
			'settingsScreen.grid_view_description' => 'Карточки занимают меньше места в виде сетки',
			'settingsScreen.visual' => 'Визуализация',
			'settingsScreen.system' => 'Система',
			'settingsScreen.change_theme' => 'Изменить тему',
			'settingsScreen.select_theme' => 'Выберите тему',
			'settingsScreen.apply_change' => 'Применить изменения?',
			'settingsScreen.this_action_will_restart_the_app' => 'Это действие перезапустит приложение',
			'settingsScreen.remindersNote' => '🔔 Заметка о напоминаниях',
			'settingsScreen.remindersNoteDescription' => 'Если вы включили напоминания для этого приложения, пожалуйста, убедитесь, что периодически открываете его, чтобы получать запланированные напоминания должным образом. Из-за полностью оффлайн режима работы этого приложения, напоминания не будут отправляться, если приложение не открывалось долгое время. Спасибо за понимание!',
			'appColorThemes.defaultLight' => 'Стандартная светлая',
			'appColorThemes.defaultDark' => 'Стандартная тёмная',
			'appColorThemes.strawberryPink' => 'Клубничный розовый [Светлый]',
			'appColorThemes.forestGreen' => 'Лесной зелёный [Тёмный]',
			'calendarScreen.birthday' => 'День рождения',
			'calendarScreen.annualEvent' => 'Ежегодное событие',
			'calendarScreen.oneTimeReminder' => 'Однократное напоминание',
			_ => null,
		};
	}
}
