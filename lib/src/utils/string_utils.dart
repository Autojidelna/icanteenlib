extension StringUtils on String {
  String removeDiacritics() {
    const map = {
      'á': 'a', // á
      'Á': 'A',
      'č': 'c', // ć
      'Č': 'C',
      'ď': 'd', // ď
      'Ď': 'D',
      'é': 'e', // é
      'É': 'E',
      'ě': 'e', // ě
      'Ě': 'E',
      'í': 'i', // í
      'Í': 'I',
      'ň': 'n', // ň
      'Ň': 'N',
      'ó': 'o', // ó
      'Ó': 'O',
      'ř': 'r', // ř
      'Ř': 'R',
      'š': 's', // š
      'Š': 'S',
      'ť': 't', // ť
      'Ť': 'T',
      'ú': 'u', // ú
      'Ú': 'U',
      'ů': 'u', // ů
      'Ů': 'U',
      'ý': 'y', // ý
      'Ý': 'Y',
      'ž': 'z', // ž
      'Ž': 'Z',
    };

    return split('').map((c) => map[c] ?? c).join();
  }

  String normalize() {
    return removeDiacritics()
        .replaceAll(RegExp(r'\s+'), '_') // Replace all spaces with exactly 1 underscore, even if there are multiple spaces after each other
        .replaceAll(RegExp(r'[^a-z0-9_]'), ''); // Remove anything that is not [a-z], [0-9] or [_]
  }
}
