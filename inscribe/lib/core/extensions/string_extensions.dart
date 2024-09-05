extension StringExtensions on String {
  String simplifyForSearch() {
    String lowercased = toLowerCase();
    String cleaned = lowercased.replaceAll(RegExp(r'[^a-z0-9]'), '');
    return cleaned;
  }

  String capitalizeFirstLetter() {
    return this[0].toUpperCase() + substring(1);
  }
}
