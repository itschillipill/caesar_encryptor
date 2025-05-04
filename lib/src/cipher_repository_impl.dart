import 'package:caesar_encryptor/src/repository/cipher_repository.dart';

// Concrete implementation of the Caesar cipher using the CipherRepository interface
class CipherRepositoryImpl implements CipherRepository {
  @override
  String encrypt(String text, int shift, String alphabet) {
    // Use the generalized Caesar cipher logic with a positive shift for encryption
    return _caesarCipher(text, shift, alphabet);
  }

  @override
  String decrypt(String text, int shift, String alphabet) {
    // Decryption is the same process as encryption, but with a negative shift
    return _caesarCipher(text, -shift, alphabet);
  }

  /// Core logic for both encryption and decryption
  String _caesarCipher(String text, int shift, String alphabet) {
    final int alphabetSize = alphabet.length;
    
    return text.split('').map((char) {
      // Find the index of the character in the alphabet (case-insensitive)
      final int index = alphabet.indexOf(char.toUpperCase());
      
      // If the character is not in the alphabet (like spaces, punctuation), return it unchanged
      if (index == -1) return char;

      // Calculate the new position of the character, handling the shift and wrapping around
      final int newIndex = (index + shift) % alphabetSize;

      // Ensure the new character is within bounds, in case the shift results in a negative index
      final String newChar = alphabet[newIndex < 0 ? newIndex + alphabetSize : newIndex];

      // Return the new character with the same case as the original character
      return char == char.toUpperCase() ? newChar : newChar.toLowerCase();
    }).join('');
  }
}
