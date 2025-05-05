/// An abstract interface for implementing Caesar cipher logic.
abstract class CipherRepository {
  /// Encrypts the given [text] using the Caesar cipher algorithm
  /// with the specified [shift] and [alphabet].
  ///
  /// Returns the encrypted text.
  String encrypt(String text, int shift, String alphabet);

  /// Decrypts the given [text] using the Caesar cipher algorithm
  /// with the specified [shift] and [alphabet].
  ///
  /// Returns the decrypted text.
  String decrypt(String text, int shift, String alphabet);
}
