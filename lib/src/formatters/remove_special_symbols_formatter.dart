import 'text_formatter.dart';

/// A [TextFormatter] that removes all special characters from the input [text].
///
/// Keeps only word characters, digits, spaces, and Cyrillic letters (including 'ё' and 'Ё').
/// Useful for cleaning text before encryption by stripping punctuation or symbols.
class RemoveSpecialSymbolsFormatter implements TextFormatter {
  @override
  String format(String text) {
    // Remove everything except letters, digits, whitespace, and underscores.
    // Includes both Latin and Cyrillic letters, including 'ё' and 'Ё'.
    return text.replaceAll(RegExp(r'[^\w\sа-яА-ЯёЁ0-9]'), '');
  }
}
