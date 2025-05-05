import 'text_formatter.dart';

/// A [TextFormatter] that replaces the Russian letter 'ё' with 'е' (and 'Ё' with 'Е').
///
/// This is useful in cases where the alphabet being used for encryption or
/// comparison does not include the 'ё' character and treats it as equivalent to 'е'.
class ReplaceEFormatter implements TextFormatter {
  @override
  String format(String text) {
    return text.replaceAll(RegExp(r'ё'), 'е').replaceAll(RegExp(r'Ё'), 'Е');
  }
}
