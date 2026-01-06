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
class TranslationsTr extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.tr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsTr _root = this; // ignore: unused_field

	@override 
	TranslationsTr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsTr(meta: meta ?? this.$meta);

	// Translations
	@override String get appName => 'Inscribe';
	@override String get cancel => 'İptal';
	@override String get confirm => 'Onayla';
	@override String get undo => 'Geri al';
	@override String get edit => 'Düzenle';
	@override String get delete => 'Sil';
	@override late final _TranslationsErrorMessagesTr errorMessages = _TranslationsErrorMessagesTr._(_root);
	@override late final _TranslationsDrawerTr drawer = _TranslationsDrawerTr._(_root);
	@override late final _TranslationsImportExportTr importExport = _TranslationsImportExportTr._(_root);
	@override late final _TranslationsWelcomeScreenTr welcomeScreen = _TranslationsWelcomeScreenTr._(_root);
	@override late final _TranslationsHomeScreenTr homeScreen = _TranslationsHomeScreenTr._(_root);
	@override late final _TranslationsNewNoteScreenTr newNoteScreen = _TranslationsNewNoteScreenTr._(_root);
	@override late final _TranslationsArchivedNotesTr archivedNotes = _TranslationsArchivedNotesTr._(_root);
	@override late final _TranslationsSettingsScreenTr settingsScreen = _TranslationsSettingsScreenTr._(_root);
	@override late final _TranslationsAppColorThemesTr appColorThemes = _TranslationsAppColorThemesTr._(_root);
	@override late final _TranslationsCalendarScreenTr calendarScreen = _TranslationsCalendarScreenTr._(_root);
}

// Path: errorMessages
class _TranslationsErrorMessagesTr extends TranslationsErrorMessagesEn {
	_TranslationsErrorMessagesTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get mandatory_field => 'Bu alan zorunludur.';
}

// Path: drawer
class _TranslationsDrawerTr extends TranslationsDrawerEn {
	_TranslationsDrawerTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

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
class _TranslationsImportExportTr extends TranslationsImportExportEn {
	_TranslationsImportExportTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get fileDownloaded => 'Veriler dosya sisteminize kaydedildi.';
	@override String get dataHasBeenImported => 'Dosyadan veri içe aktarıldı.';
	@override String get error => 'Dosyadan veri içe aktarılırken bir hata oluştu.';
}

// Path: welcomeScreen
class _TranslationsWelcomeScreenTr extends TranslationsWelcomeScreenEn {
	_TranslationsWelcomeScreenTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

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
class _TranslationsHomeScreenTr extends TranslationsHomeScreenEn {
	_TranslationsHomeScreenTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

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
	@override String its_birthday_today({required Object name}) => '🎂 Bugün ${name}\'in doğum günü!';
}

// Path: newNoteScreen
class _TranslationsNewNoteScreenTr extends TranslationsNewNoteScreenEn {
	_TranslationsNewNoteScreenTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

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
class _TranslationsArchivedNotesTr extends TranslationsArchivedNotesEn {
	_TranslationsArchivedNotesTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

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
class _TranslationsSettingsScreenTr extends TranslationsSettingsScreenEn {
	_TranslationsSettingsScreenTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

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
	@override String get select_theme => 'Tema seçin';
	@override String get apply_change => 'Değişiklik uygulansın mı?';
	@override String get this_action_will_restart_the_app => 'Bu işlem uygulamayı yeniden başlatacak';
	@override String get remindersNote => '🔔 Hatırlatmalar notu';
	@override String get remindersNoteDescription => 'Bu uygulama için hatırlatmaları etkinleştirdiyseniz, planlanan hatırlatmaları düzgün alabilmek için lütfen zaman zaman uygulamayı açtığınızdan emin olun. Bu uygulamanın tamamen çevrimdışı yapısı nedeniyle, uygulama uzun süre açılmadığında hatırlatmalar gönderilmeyecektir. Anlayışınız için teşekkürler!';
}

// Path: appColorThemes
class _TranslationsAppColorThemesTr extends TranslationsAppColorThemesEn {
	_TranslationsAppColorThemesTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get defaultLight => 'Varsayılan Açık';
	@override String get defaultDark => 'Varsayılan Koyu';
	@override String get strawberryPink => 'Çilek Pembe [Açık]';
	@override String get forestGreen => 'Orman Yeşili [Koyu]';
}

// Path: calendarScreen
class _TranslationsCalendarScreenTr extends TranslationsCalendarScreenEn {
	_TranslationsCalendarScreenTr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get birthday => 'Doğum günü';
	@override String get annualEvent => 'Yıllık etkinlik';
	@override String get oneTimeReminder => 'Tek seferlik hatırlatıcı';
}

/// The flat map containing all translations for locale <tr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsTr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'appName' => 'Inscribe',
			'cancel' => 'İptal',
			'confirm' => 'Onayla',
			'undo' => 'Geri al',
			'edit' => 'Düzenle',
			'delete' => 'Sil',
			'errorMessages.mandatory_field' => 'Bu alan zorunludur.',
			'drawer.memoirs' => 'Anılar',
			'drawer.archive' => 'Arşiv',
			'drawer.settings' => 'Ayarlar',
			'drawer.calendar' => 'Takvim',
			'drawer.export' => 'Dışa aktar',
			'drawer.import' => 'İçe aktar',
			'drawer.debug_notifications' => '[DEBUG] Bildirimler',
			'importExport.fileDownloaded' => 'Veriler dosya sisteminize kaydedildi.',
			'importExport.dataHasBeenImported' => 'Dosyadan veri içe aktarıldı.',
			'importExport.error' => 'Dosyadan veri içe aktarılırken bir hata oluştu.',
			'welcomeScreen.title' => 'Inscribe\'a Hoş Geldiniz!',
			'welcomeScreen.slides.0' => 'Arkadaşlıkları, beğeniler, doğum günleri ve hediye fikirlerine dair kişiselleştirilmiş notlarla kutlayın.',
			'welcomeScreen.slides.1' => 'Her arkadaşınız için özenli hediye listeleri hazırlayın ve her etkinliği unutulmaz kılın.',
			'welcomeScreen.slides.2' => 'Arkadaşlıklarınızı her yere taşıyın - verilerinizi kolayca indirin ve aktarın.',
			'welcomeScreen.slides.3' => 'Gizliliğiniz önemlidir - verilerinizi güvende tutarak tam çevrimdışı işlevselliğin keyfini çıkarın.',
			'welcomeScreen.slides.4' => 'Hiçbir anı kaçırmayın - özel etkinlikler ve olaylar için hatırlatıcılar kurun.',
			'welcomeScreen.startButton' => 'Not almaya başla!',
			'homeScreen.welcome' => 'Hoş geldiniz!',
			'homeScreen.no_notes_title' => 'Not bulunamadı!',
			'homeScreen.no_notes_subtitle' => 'Bir arkadaş anısı ekleyerek başlayın.',
			'homeScreen.add_note' => 'Not ekle',
			'homeScreen.pinned' => 'Sabitlenmiş',
			'homeScreen.other' => 'Diğer',
			'homeScreen.search' => 'Ara',
			'homeScreen.pin_note' => 'Notu sabitle',
			'homeScreen.unpin_note' => 'Notu sabitlemeden çıkar',
			'homeScreen.its_birthday_today' => ({required Object name}) => '🎂 Bugün ${name}\'in doğum günü!',
			'newNoteScreen.friend_name_hint' => 'Adı nedir?',
			'newNoteScreen.fields_missing_error' => 'Üzgünüz! Bazı alanlar eksik!',
			'newNoteScreen.overview' => 'Genel Bakış',
			'newNoteScreen.gift_ideas' => 'Hediye fikirleri',
			'newNoteScreen.gift_ideas_hint' => 'Bu kişi neyi hediye olarak sever?',
			'newNoteScreen.reminders' => 'Hatırlatıcılar',
			'newNoteScreen.category' => 'Kategori',
			'newNoteScreen.categories.0' => 'Arkadaş 😄',
			'newNoteScreen.categories.1' => 'İş 💼',
			'newNoteScreen.categories.2' => 'Aile 🏠',
			'newNoteScreen.categories.3' => 'Okul 🎒',
			'newNoteScreen.categories.4' => 'Romantik ❤️‍🔥',
			'newNoteScreen.date_of_birth' => 'Doğum tarihi',
			'newNoteScreen.description' => 'Açıklama',
			'newNoteScreen.description_hint' => 'Buraya istediğiniz notları ekleyin...',
			'newNoteScreen.coming_soon' => 'Yakında geliyor',
			'newNoteScreen.some_fields_are_missing' => 'Bazı alanlar eksik!',
			'newNoteScreen.note_saved' => 'Not başarıyla kaydedildi!',
			'newNoteScreen.archive_note' => 'Notu arşivle',
			'newNoteScreen.archive_note_are_you_sure' => ({required Object name}) => 'Bu notu \'${name}\' arşivlemek istediğinize emin misiniz?',
			'newNoteScreen.note_achived' => 'Not arşivlendi!',
			'newNoteScreen.select_image' => 'Resim seç',
			'newNoteScreen.remove_image' => 'Resmi kaldır',
			'newNoteScreen.randomize_illusrtation' => 'İllüstrasyonu rastgele seç',
			'newNoteScreen.unsaved_changes' => 'Kaydedilmemiş değişiklikler',
			'newNoteScreen.save_changes_description' => 'Değişiklikleri kaydetmek istiyor musunuz?',
			'newNoteScreen.save' => 'Kaydet',
			'newNoteScreen.discard' => 'Vazgeç',
			'newNoteScreen.add_reminder' => 'Hatırlatıcı ekle',
			'newNoteScreen.annual' => 'Yıllık',
			'newNoteScreen.this_reminder_will_be_repeated_every_year' => 'Bu hatırlatıcı her yıl tekrarlanacak',
			'newNoteScreen.name' => 'Ad',
			'newNoteScreen.date' => 'Tarih',
			'newNoteScreen.time' => 'Saat',
			'newNoteScreen.reminder_deleted' => 'Hatırlatıcı silindi!',
			'newNoteScreen.no_reminders' => 'Hatırlatıcı yok',
			'newNoteScreen.reminder_created' => 'Hatırlatıcı oluşturuldu!',
			'archivedNotes.no_archived_notes' => 'Arşivlenmiş not yok!',
			'archivedNotes.no_archived_notes_subtitle' => 'Silinen notlarınız burada görünecek.',
			'archivedNotes.delete_all_notes_forever_dialog_title' => 'Tüm notları sonsuza kadar sil',
			'archivedNotes.delete_all_notes_forever_dialog_subtitle' => 'Bu işlem geri alınamaz. Arşiv boşaltılacak.',
			'archivedNotes.delete_note_forever_dialog_title' => 'Notu sonsuza kadar sil',
			'archivedNotes.delete_note_forever_dialog_subtitle' => 'Bu işlem geri alınamaz. Notunuz kalıcı olarak silinecek.',
			'archivedNotes.restore' => 'Geri yükle',
			'archivedNotes.delete_forever' => 'Sonsuza kadar sil',
			'archivedNotes.note_deleted' => 'Not silindi!',
			'archivedNotes.note_restored' => 'Not geri yüklendi!',
			'settingsScreen.app_name_and_version' => ({required Object version}) => 'Inscribe, v${version}',
			'settingsScreen.theme' => 'Tema',
			'settingsScreen.dark' => 'Koyu tema',
			'settingsScreen.light' => 'Açık tema',
			'settingsScreen.language' => 'Dil',
			'settingsScreen.english' => 'İngilizce',
			'settingsScreen.serbian' => 'Sırpça',
			'settingsScreen.notes_view' => 'Not görünümü',
			'settingsScreen.grid_view' => 'Izgara görünümü',
			'settingsScreen.list_view' => 'Liste görünümü',
			'settingsScreen.use_dark_theme' => 'Koyu temayı kullan',
			'settingsScreen.dark_theme_description' => 'Göz yorgunluğunu azaltın ve pil tasarrufu yapın',
			'settingsScreen.use_grid_view' => 'Izgara görünümünü kullan',
			'settingsScreen.grid_view_description' => 'Kartlar ızgara görünümünde daha az yer kaplar',
			'settingsScreen.visual' => 'Görsel',
			'settingsScreen.system' => 'Sistem',
			'settingsScreen.change_theme' => 'Temayı değiştir',
			'settingsScreen.select_theme' => 'Tema seçin',
			'settingsScreen.apply_change' => 'Değişiklik uygulansın mı?',
			'settingsScreen.this_action_will_restart_the_app' => 'Bu işlem uygulamayı yeniden başlatacak',
			'settingsScreen.remindersNote' => '🔔 Hatırlatmalar notu',
			'settingsScreen.remindersNoteDescription' => 'Bu uygulama için hatırlatmaları etkinleştirdiyseniz, planlanan hatırlatmaları düzgün alabilmek için lütfen zaman zaman uygulamayı açtığınızdan emin olun. Bu uygulamanın tamamen çevrimdışı yapısı nedeniyle, uygulama uzun süre açılmadığında hatırlatmalar gönderilmeyecektir. Anlayışınız için teşekkürler!',
			'appColorThemes.defaultLight' => 'Varsayılan Açık',
			'appColorThemes.defaultDark' => 'Varsayılan Koyu',
			'appColorThemes.strawberryPink' => 'Çilek Pembe [Açık]',
			'appColorThemes.forestGreen' => 'Orman Yeşili [Koyu]',
			'calendarScreen.birthday' => 'Doğum günü',
			'calendarScreen.annualEvent' => 'Yıllık etkinlik',
			'calendarScreen.oneTimeReminder' => 'Tek seferlik hatırlatıcı',
			_ => null,
		};
	}
}
