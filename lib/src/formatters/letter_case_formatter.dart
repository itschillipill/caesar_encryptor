import 'package:caesar_encryptor/src/letter_case.dart';
import 'text_formatter.dart';

/// A [TextFormatter] that changes the case of the input [text]
/// based on the specified [LetterCase].
///
/// This formatter delegates the transformation to the [LetterCase] enum,
/// which can convert the text to either uppercase or lowercase.
class LetterCaseFormatter implements TextFormatter {
  /// The desired letter case transformation (e.g., [LetterCase.upperCase]).
  final LetterCase letterCase;

  /// Creates a formatter that applies the given [letterCase] to the text.
  LetterCaseFormatter({required this.letterCase});

  @override
  String format(String text) {
    return letterCase.toLetterCase(text);
  }
}
