import 'package:caesar_encryptor/src/cipher_repository_impl.dart';
import 'package:caesar_encryptor/src/formatters/text_formatter.dart';
import 'package:caesar_encryptor/src/formatting_options.dart';
import 'alphabet.dart';

/// Provides Caesar cipher encryption and decryption with optional formatting.
class CaesarEncryptor {
  /// The number of positions to shift each character.
  final int shift;

  /// The alphabet used for encryption/decryption (e.g., English or Russian).
  final Alphabet alphabet;

  /// Internal repository that performs the actual Caesar cipher logic.
  final CipherRepositoryImpl _cipherRepository = CipherRepositoryImpl();

  /// A set of formatting options applied to the result after encryption/decryption.
  final FormattingOptions formattingOptions;

  /// Creates a [CaesarEncryptor] with the given [shift], [alphabet],
  /// and optional [formattingOptions].
  ///
  /// If no formatting options are provided, the result will not be formatted.
  CaesarEncryptor({
    required this.shift,
    required this.alphabet,
    this.formattingOptions = const FormattingOptions(formatters: []),
  });

  /// Encrypts the given [text] using the Caesar cipher and applies formatting.
  ///
  /// Returns the encrypted and optionally formatted string.
  String encrypt(String text, {FormattingOptions? formattingOptions}) {
    final result = _cipherRepository.encrypt(text, shift, alphabet.letters);
    return _format(
        result, (formattingOptions ?? this.formattingOptions).formatters);
  }

  /// Decrypts the given [text] using the Caesar cipher and applies formatting.
  ///
  /// Returns the decrypted and optionally formatted string.
  String decrypt(String text, {FormattingOptions? formattingOptions}) {
    final result = _cipherRepository.decrypt(text, shift, alphabet.letters);
    return _format(
        result, (formattingOptions ?? this.formattingOptions).formatters);
  }

  /// Applies a chain of [TextFormatter]s to the [text] in sequence.
  String _format(String text, List<TextFormatter> formatters) {
    for (var formatter in formatters) {
      text = formatter.format(text);
    }
    return text;
  }
}
