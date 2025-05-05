/// Represents different letter case transformations for text.
enum LetterCase {
  /// Transforms text to uppercase (e.g., "hello" → "HELLO").
  upperCase(toLetterCase: _toUpperCase),

  /// Transforms text to lowercase (e.g., "HELLO" → "hello").
  lowerCase(toLetterCase: _toLowerCase);

  /// A function that defines how to transform the case of a given string.
  final String Function(String text) toLetterCase;

  /// Creates a [LetterCase] enum value with the associated transformation function.
  const LetterCase({required this.toLetterCase});

  /// Internal method that converts text to uppercase.
  static String _toUpperCase(String text) => text.toUpperCase();

  /// Internal method that converts text to lowercase.
  static String _toLowerCase(String text) => text.toLowerCase();
}
