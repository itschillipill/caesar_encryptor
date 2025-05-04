import 'package:caesar_encryptor/src/cipher_repository_impl.dart';
import 'alphabet.dart';

/// Caesar cipher encryption and decryption for supported alphabets.
class CaesarEncryptor {
  final int shift;
  final Alphabet alphabet;

  final CipherRepositoryImpl _cipherRepository;

  /// Creates a CaesarEncryptor with a given [shift] and [alphabet], and injects the [CipherRepository].
  CaesarEncryptor({
    required this.shift,
    required this.alphabet,
    CipherRepositoryImpl? cipherRepository,  // Allows for dependency injection
  }) : _cipherRepository = cipherRepository ?? CipherRepositoryImpl();

  /// Encrypts the given [text] using Caesar cipher.
  String encrypt(String text) {
    return _cipherRepository.encrypt(text, shift, alphabet.letters);
  }

  /// Decrypts the given [text] using Caesar cipher.
  String decrypt(String text) {
    return _cipherRepository.decrypt(text, shift, alphabet.letters);
  }
}
