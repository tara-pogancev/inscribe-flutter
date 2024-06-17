extension StringExtensions on String {
  String simplifyForSearch() {
    String lowercased = this.toLowerCase();
    String cleaned = lowercased.replaceAll(RegExp(r'[^a-z0-9]'), '');
    return cleaned;
  }
}
