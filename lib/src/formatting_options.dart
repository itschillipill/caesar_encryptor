import 'package:caesar_encryptor/src/formatters/text_formatter.dart';

/// Defines options for formatting the output of Caesar cipher results.
class FormattingOptions {
  /// A list of [TextFormatter] instances to apply to the text.
  final List<TextFormatter> formatters;

  /// Creates a [FormattingOptions] instance.
  ///
  /// [formatters] is a list of [TextFormatter] instances that will be
  /// applied to the text in the order they appear in the list.
  const FormattingOptions({this.formatters = const []});
}
