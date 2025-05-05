import 'text_formatter.dart';

/// A [TextFormatter] that inserts spaces after every [spaceAfterLetters] characters.
///
/// This can improve readability of encrypted or long strings by splitting them
/// into groups (e.g., grouping letters like "HELLOWORLD" → "HEL LO WOR LD").
class SpaceFormatter implements TextFormatter {
  /// The number of letters after which a space should be inserted.
  final int spaceAfterLetters;

  /// Creates a [SpaceFormatter] with a given [spaceAfterLetters] value.
  ///
  /// For example, `spaceAfterLetters: 4` will format "ABCDEFGH" to "ABCD EFGH".
  SpaceFormatter({required this.spaceAfterLetters});

  @override
  String format(String text) {
    // Remove all existing spaces to ensure consistent spacing.
    text = text.replaceAll(RegExp(r' '), '');

    StringBuffer formattedText = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      formattedText.write(text[i]);
      // Add a space after every [spaceAfterLetters] characters, except at the end.
      if ((i + 1) % spaceAfterLetters == 0 && i != text.length - 1) {
        formattedText.write(' ');
      }
    }

    return formattedText.toString();
  }
}
